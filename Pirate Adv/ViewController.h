//
//  ViewController.h
//  Pirate Adv
//
//  Created by Paing Soe on 1/26/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface ViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) CCCharacter *character;
@property (strong, nonatomic) CCBoss *boss;

@property (strong, nonatomic) IBOutlet UIImageView *bgImage;
@property (strong, nonatomic) IBOutlet UILabel *lblHealth;
@property (strong, nonatomic) IBOutlet UILabel *lblDamage;
@property (strong, nonatomic) IBOutlet UILabel *lblWeapon;
@property (strong, nonatomic) IBOutlet UILabel *lblArmor;

@property (strong, nonatomic) IBOutlet UILabel *lblStory;

@property (strong, nonatomic) IBOutlet UIButton *btnAction;
@property (strong, nonatomic) IBOutlet UIButton *btnNourth;
@property (strong, nonatomic) IBOutlet UIButton *btnEast;
@property (strong, nonatomic) IBOutlet UIButton *btnSouth;
@property (strong, nonatomic) IBOutlet UIButton *btnWest;

- (IBAction)btnActionPressed:(UIButton *)sender;
- (IBAction)btnNourthPressed:(UIButton *)sender;
- (IBAction)btnEastPressed:(UIButton *)sender;
- (IBAction)btnSouthPressed:(UIButton *)sender;
- (IBAction)btnWestPressed:(UIButton *)sender;
- (IBAction)btnRestartPressed:(UIButton *)sender;

@end

