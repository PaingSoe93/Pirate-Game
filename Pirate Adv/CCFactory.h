//
//  CCFactory.h
//  Pirate Adv
//
//  Created by Paing Soe on 1/28/15.
//  Copyright (c) 2015 Pai Innovation Co.,ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;
-(CCCharacter *)character;
-(CCBoss *) boss;

@end
