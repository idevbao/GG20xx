//
//  Object_GG.m

//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "Object_GG.h"

#define degreesToRadian(x)  (M_PI* (x) /180.0)
@implementation Object_GG
-(instancetype)init_Object_NameObj:(NSString*)name
                          own_View:(UIView*)view
                        with_Scene:(Scene_VC*)scene{
    if (self = [super init]) {
        self.Name_obj = name;
        self.View_obj = view;
        self.Scene_obj = scene;
        self.Width_Scene = 4500;
        self.Height_Scene = 2234;
    }
    return self;
}
-(void)locationObjectAndItem_Quantity:(int)_quantity
                             with_Obj:(Object_GG*)_objGG
                            and_Scene:(Scene_VC*)_scene
                             View_Map:(UIView*)viewMap{
}
-(void)animation_obj{
}

-(void)Rotation3D_X:(int)x Y:(int)y andZ:(int)z with_obj:(Object_GG*)_obj{
    CATransform3D xoay_X = CATransform3DMakeRotation(degreesToRadian(x), 1, 0, 0);
    CATransform3D xoay_Y = CATransform3DMakeRotation(degreesToRadian(y), 0, 1, 0);
    CATransform3D xoay_XY = CATransform3DConcat(xoay_X, xoay_Y);
    CATransform3D xoay_Z = CATransform3DMakeRotation(degreesToRadian(z), 0, 0, 1);
    _obj.View_obj.layer.transform = CATransform3DConcat(xoay_XY, xoay_Z);
    
}
@end
