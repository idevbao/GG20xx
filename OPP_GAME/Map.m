//
//  Map.m
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 14/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "Map.h"

@implementation Map

-(instancetype)init_Object_NameObj:(NSString *)name own_View:(UIView *)view with_Scene:(Scene_VC *)scene{
    
    if (self = [super init_Object_NameObj:name own_View:view with_Scene:scene]){
        
    }
    return self;
}

-(void)locationObjectAndItem_Quantity:(int)_quantity
                             with_Obj:(Object_GG*)_objGG
                            and_Scene:(Scene_VC*)_scene
                             View_Map:(UIView*)viewMap{
    for (int i = 0; i<_quantity; i ++) {
        NSString * mapName = [NSString stringWithFormat:@"map_%d",i];
        //        int y = arc4random_uniform(3);
        NSString *map = [NSString stringWithFormat:@"maps.png"];
        _objGG = [[Map alloc] init_Object_NameObj:mapName
                                         own_View:[[UIImageView alloc]initWithImage:[UIImage imageNamed:map]]
                                       with_Scene:_scene];
        
        [_scene add_Object_toSecen:_objGG];
    }
}
@end
