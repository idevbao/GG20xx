
//
//  Scene_VC.m
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 1/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "Scene_VC.h"

@interface Scene_VC ()

@end

@implementation Scene_VC

-(void)loadView{
    [super loadView];
    _Objects = [NSMutableDictionary new];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)add_Object_toSecen:(Object_GG*)obj{
    [_Objects setObject:obj forKey:obj.Name_obj];
    [self.view addSubview:obj.View_obj];
}
-(void)remove_Object_inSecen:(Object_GG*)obj{
    [_Objects removeObjectForKey:obj.Name_obj];
    
    [self.view removeFromSuperview];
}

-(void)remove_ObjectInName:(NSString*)obj_name{}


#pragma mark _ method rieng cho item move map
-(void)add_Object_item:(Object_GG*)obj{
    [_Objects setObject:obj forKey:obj.Name_obj];
    
}
#pragma mark - Navigation



@end
