
//
//  User.m
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "User.h"

@implementation User
-(instancetype)init_Object_NameObj:(NSString *)name
                          own_View:(UIView*)view
                        with_Scene:(Scene_VC *)scene{
    if (self = [super init_Object_NameObj:name own_View:view with_Scene:scene]) {
        _Armor =0;
        _Health = 100;
        _isPan = false;
        _isHeadGear = false;
        _isArmored = false;
        _isGun = false;
        CGFloat x = arc4random_uniform((self.Width_Scene-self.View_obj.frame.size.width/2)-200);
        CGFloat y = arc4random_uniform((self.Height_Scene-self.View_obj.frame.size.height/2)-100);
        self.Location_obj = CGPointMake(x, y);
        
        
        
    }
    
    return self;
    
}
-(void)locationObjectAndItem_Quantity:(int)_quantity
                             with_Obj:(Object_GG*)_objGG
                            and_Scene:(Scene_VC*)_scene
                             View_Map:(UIView*)viewMap{
    for (int i = 0; i<_quantity; i ++) {
        NSString * user_name = [NSString stringWithFormat:@"User_%d",i];
        _objGG = [[User alloc] init_Object_NameObj:user_name
                                          own_View:[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"hodie.png"]]
                                        with_Scene:_scene];
        _objGG.View_obj.center = CGPointMake(_scene.view.frame.size.width/2,_scene.view.frame.size.height/2);
        [_scene add_Object_toSecen:_objGG];
        
    }
    
}
@end
