//
//  CCTile.h
//  Pirate Adv
//
//  Created by Paing Soe on 1/27/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CCArmor.h"
#import "CCWeapon.h"

@interface CCTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *bgImage;
@property (strong, nonatomic) NSString *actionButtomName;
@property (strong, nonatomic) CCArmor *armor;
@property (strong, nonatomic) CCWeapon *weapon;
@property (nonatomic) int healthEffect;

@end
