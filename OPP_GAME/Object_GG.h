//
//  Object_GG.h

//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scene_VC.h"
@class Scene_VC;
@interface Object_GG : NSObject
@property (nonatomic, strong)NSString*  Name_obj;
@property (nonatomic, strong)UIView*    View_obj;
@property (nonatomic, weak)Scene_VC*  Scene_obj;

@property (nonatomic, assign)CGPoint    Location_obj;
@property (nonatomic, assign)int        Quantity_obj;
@property (nonatomic, assign)CGFloat    Width_Scene,Height_Scene;


-(instancetype)init_Object_NameObj:(NSString*)name
                          own_View:(UIView*)view
                        with_Scene:(Scene_VC*)scene;


-(void)locationObjectAndItem_Quantity:(int)_quantity
                             with_Obj:(Object_GG*)_objGG
                            and_Scene:(Scene_VC*)_scene
                             View_Map:(UIView*)viewMap;

-(void)animation_obj;
-(void)Rotation3D_X:(int)x Y:(int)y andZ:(int)z with_obj:(Object_GG*)_obj;
@end
