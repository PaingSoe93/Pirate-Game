//
//  CCCharacter.h
//  Pirate Adv
//
//  Created by Paing Soe on 1/29/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCArmor.h"
#import "CCWeapon.h"

@interface CCCharacter : NSObject

@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
