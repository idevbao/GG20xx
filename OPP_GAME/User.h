//
//  User.h
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "Object_GG.h"
#import "Map.h"
@class Map;

@interface User : Object_GG

@property (assign, nonatomic )float Health, Armor;
@property (assign, nonatomic )BOOL isPan, isHeadGear, isArmored, isGun;



@end
