
//  CGUI.m
//
//  Created by Trúc Phương >_< on 01/01/2018.
//  Copyright © 2017 iDev Bao. All rights reserved.
//

#import "CGUI.h"


@implementation CGUI
-(instancetype)initCGUI:(UIWindow *)window{
    self = [super init];
    WindowCoreGUI = window;
    return  self;
}
-(void)RunApp{
    MainGameGunFire2018 *Run= [[MainGameGunFire2018 alloc] init];
    WindowCoreGUI.rootViewController = Run ;
    
}



@end
