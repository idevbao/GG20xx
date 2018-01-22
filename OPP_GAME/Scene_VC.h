//
//  Scene_VC.h

//
//  Created by Trúc Phương >_< on 1/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Object_GG.h"

@class Object_GG;
@interface Scene_VC : UIViewController
@property(strong, nonatomic)NSMutableDictionary* Objects;
-(void)add_Object_toSecen:(Object_GG*)obj;
-(void)remove_Object_inSecen:(Object_GG*)obj;
-(void)remove_ObjectInName:(NSString*)obj_name;
-(void)add_Object_item:(Object_GG*)obj;
@end


#pragma mark p/s: info class
/* đây là 1 class VC nhiệm vụ của nó là :
 - khi 1 obj được [init] thì Scene* sẽ chỉ cho obj* đó biết nó được addSubview vào cái view SuperView nào: ở example này Scene* UIVC nên phải tạo 1 bối cảnh kế thừa Scene để làm Bối cảnh chính ở đây là  MainGameGunFire2018 : Scene_VC
 */
