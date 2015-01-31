//
//  CCFactory.m
//  Pirate Adv
//
//  Created by Paing Soe on 1/28/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"

@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc] init];
    tile1.story = @"Take the Weapon and start the War chief!!!";
    CCWeapon *rocketWeapon = [[CCWeapon alloc] init];
    rocketWeapon.name = @"Rocket";
    rocketWeapon.damage = 20;
    tile1.weapon = rocketWeapon;
    tile1.actionButtomName = @"Take Weapon";
    
    CCTile *tile2 = [[CCTile alloc] init];
    tile2.story = @"Take shield for Armor and protect the worrier";
    CCArmor *goldShield = [[CCArmor alloc] init];
    goldShield.name = @"Gold Shield";
    goldShield.health = 10;
    tile2.armor = goldShield;
    tile2.actionButtomName = @"Get Armor";
    
    CCTile *tile3 = [[CCTile alloc] init];
    tile3.story = @"This is story 3";
    tile3.healthEffect = 30;
    tile3.actionButtomName = @"Drink Health";
    
    NSMutableArray *firstColoum = [[NSMutableArray alloc] init];
    [firstColoum addObject:tile1];
    [firstColoum addObject:tile2];
    [firstColoum addObject:tile3];
    
    CCTile *tile4 = [[CCTile alloc] init];
    tile4.story = @"There is a river let go to swim!!!";
    tile4.healthEffect = -5;
    tile4.actionButtomName = @"Swim Deeply";
    
    CCTile *tile5 = [[CCTile alloc] init];
    tile5.story = @"This is good Weapon Sir";
    CCWeapon *nuclearWeapon = [[CCWeapon alloc] init];
    nuclearWeapon.name = @"Nuclear Weapon";
    nuclearWeapon.damage = 40;
    tile5.weapon = nuclearWeapon;
    tile5.actionButtomName = @"Use the Weapon";
    
    CCTile *tile6 = [[CCTile alloc] init];
    tile6.story = @"There is enemy fight";
    tile6.healthEffect = -15;
    tile6.actionButtomName = @"Fight!!!!";
    
    NSMutableArray *secondColoum = [[NSMutableArray alloc] init];
    [secondColoum addObject:tile4];
    [secondColoum addObject:tile5];
    [secondColoum addObject:tile6];
    
    CCTile *tile7 = [[CCTile alloc] init];
    tile7.story = @"After the war take the dinner and sex with girl";
    tile7.healthEffect = 10;
    tile7.actionButtomName = @"Sex with girl";
    
    
    CCTile *tile8 = [[CCTile alloc] init];
    tile8.story = @"Morning and fight the war again";
    tile8.healthEffect = -25;
    tile8.actionButtomName = @"Unless the War!!!";
    
    CCTile *tile9 = [[CCTile alloc] init];
    tile9.story = @"Kill the king and married the queen hehe";
    tile9.healthEffect = -15;
    tile9.actionButtomName = @"Kill the king";
    
    NSMutableArray *thirdColoum = [[NSMutableArray alloc] init];
    [thirdColoum addObject:tile7];
    [thirdColoum addObject:tile8];
    [thirdColoum addObject:tile9];
    
    CCTile *tile10 = [[CCTile alloc] init];
    tile10.story = @"Got the treasur and health bottom";
    tile10.healthEffect = 5;
    tile10.actionButtomName = @"Drink it";
    
    CCTile *tile11 = [[CCTile alloc] init];
    tile11.story = @"Finally there is last worrier and fight";
    tile11.healthEffect = -20;
    tile11.actionButtomName = @"Last worrier";
    
    CCTile *tile12 = [[CCTile alloc] init];
    tile12.story = @"Victory and Die";
    tile12.healthEffect = -5;
    tile12.actionButtomName = @"Older and Older";
    
    NSMutableArray *forthColoum = [[NSMutableArray alloc] init];
    [forthColoum addObject:tile10];
    [forthColoum addObject:tile11];
    [forthColoum addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColoum, secondColoum, thirdColoum, forthColoum, nil];
    
    return tiles;
}

-(CCCharacter *)character
{
    CCCharacter *character = [[CCCharacter alloc] init];
    character.health = 100;
    
    CCArmor *armor =[[CCArmor alloc] init];
    armor.name = @"Strong";
    armor.health = 10;
    
    character.armor = armor;
    
    CCWeapon *weapon = [[CCWeapon alloc] init];
    weapon.name =@"AK 47";
    weapon.damage = 40;
    
    character.weapon =weapon;
    
    return character;
}

-(CCBoss *) boss
{
    CCBoss *boss = [[CCBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
