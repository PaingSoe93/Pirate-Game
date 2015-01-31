//
//  ViewController.m
//  Pirate Adv
//
//  Created by Paing Soe on 1/26/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import "ViewController.h"
#import "CCFactory.h"
#import "CCTile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CCFactory *factory = [[CCFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];

    self.currentPoint = CGPointMake(0, 0);
    
    [self updateCharacterStatesForArmor:nil withWeapon:nil withHealthEffect:0];
    [self updateTile];
    [self updateButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)btnActionPressed:(UIButton *)sender {
    CCTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
    }
    [self updateCharacterStatesForArmor:tile.armor withWeapon:tile.weapon withHealthEffect:tile.healthEffect];
    if (self.character.health <= 0 ) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"You are die!!!" message:@"Restart the game baby!!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    else if (self.boss.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory!!!" message:@"You win the game" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertView show];
    }
    [self updateTile];
}

- (IBAction)btnNourthPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButton];
    [self updateTile];
}

- (IBAction)btnEastPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButton];
    [self updateTile];
}

- (IBAction)btnSouthPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButton];
    [self updateTile];
}

- (IBAction)btnWestPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButton];
    [self updateTile];
}

- (IBAction)btnRestartPressed:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

#pragma mark - helper methods

-(void)updateTile{
    CCTile *tilesModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.lblStory.text = tilesModel.story;
    self.lblHealth.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.lblDamage.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.lblArmor.text = self.character.armor.name;
    self.lblWeapon.text = self.character.weapon.name;
    [self.btnAction setTitle:tilesModel.actionButtomName forState:UIControlStateNormal];
    
}

-(void)updateButton{
    self.btnWest.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x - 1 , self.currentPoint.y)];
    self.btnEast.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x + 1 , self.currentPoint.y)];
    self.btnNourth.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x , self.currentPoint.y + 1)];
    self.btnSouth.hidden = [self tilesExistAtPoint:CGPointMake(self.currentPoint.x , self.currentPoint.y - 1)];
}

-(BOOL)tilesExistAtPoint:(CGPoint)point
{
    if (point.x >= 0 && point.y >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void)updateCharacterStatesForArmor:(CCArmor *)armor withWeapon:(CCWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if (weapon != nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

@end
