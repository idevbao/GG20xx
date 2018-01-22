//
//  CGUI.h

//
//  Created by Trúc Phương >_< on 01/01/2018.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "MainGameGunFire2018.h"


@interface CGUI : NSObject{
    UIWindow* WindowCoreGUI;
}


-(instancetype)initCGUI:(UIWindow*)_window;
-(void)RunApp;


@end
