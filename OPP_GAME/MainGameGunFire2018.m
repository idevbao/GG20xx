//
//  MainGameGunFire2018.m
//  Opp_Game_GUN
//
//  Created by Trúc Phương >_< on 13/01/2018.
//  Copyright © 2018 iDev Bao. All rights reserved.
//

#import "MainGameGunFire2018.h"

@interface MainGameGunFire2018 ()
{
    User * user, *a;
    HeadGear_item * headGear;
    Armored_item * armored;
    Pan_item * pan;
    Map * map;
    Scene_VC * scene;
    NSTimer * timer, *timer1,* timer2,* timer3;
    UIButton *aButton_left,*aButton_right, *aButton_Dow,*aButton_Up;
    UIImageView * Itiem;
}

@end

@implementation MainGameGunFire2018
-(void)loadView{
    [super loadView];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
#pragma mark init Obj
    headGear = [HeadGear_item new];
    armored = [Armored_item new];
    pan = [Pan_item new];
    user = [User new];
    map = [Map new];
    
#pragma mark Map init
    [map locationObjectAndItem_Quantity:1 with_Obj:map and_Scene:self View_Map:nil];
#pragma mark User init
    [user locationObjectAndItem_Quantity:1 with_Obj:user and_Scene:self View_Map:nil];
    a =  [self.Objects objectForKey:@"User_0"];
    /*
     User * b =  [self.Objects objectForKey:@"User_1"];
     NSLog(@"%f",b.Location_obj.x);
     [user Rotation3D_X:0 Y:0 andZ:0 with_obj:[self.Objects objectForKey:@"User_0"]];
     */
    NSLog(@"%f %f",a.Location_obj.x,a.Location_obj.y);
#pragma mark see screen
    Map * map1 = [self.Objects objectForKey:@"map_0"];
    
    
    map1.View_obj.frame= CGRectMake(-a.Location_obj.x,-a.Location_obj.y, a.Width_Scene, a.Height_Scene);
#pragma mark Item init
    [headGear locationObjectAndItem_Quantity:20 with_Obj:headGear and_Scene:self View_Map:map1.View_obj];
    [armored locationObjectAndItem_Quantity:20 with_Obj:armored and_Scene:self View_Map:map1.View_obj];
    [pan locationObjectAndItem_Quantity:20 with_Obj:pan and_Scene:self View_Map:map1.View_obj];
    
#pragma mark addBTn
    [self addButton];
    [self addItem];
    
    
    
    
    
    
    
}


#pragma mark - Control

-(void)addItem{
    
    
    Itiem= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Oval.png"]];
    Itiem.center = CGPointMake(self.view.frame.size.width -280, self.view.frame.size.height-45);
    [self.view addSubview:Itiem];
    //    Itiem= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Oval.png"]];
    //    Itiem.center = CGPointMake(self.view.frame.size.width -220, self.view.frame.size.height-45);
    //    [self.view addSubview:Itiem];
    //    Itiem= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Oval.png"]];
    //    Itiem.center = CGPointMake(self.view.frame.size.width -160, self.view.frame.size.height-45);
    //    [self.view addSubview:Itiem];
    //    Itiem= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Oval.png"]];
    //    Itiem.center = CGPointMake(self.view.frame.size.width -100, self.view.frame.size.height-45);
    //    [self.view addSubview:Itiem];
}
#pragma mark addButton
-(void)addButton{
    aButton_left = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    aButton_left.frame = CGRectMake(10,(self.view.frame.size.height)-80, 45, 45);
    aButton_left.tag =0;
    [aButton_left setImage:[UIImage imageNamed:@"left.png"] forState:false];
    [self.view addSubview:aButton_left];
    
    [aButton_left addTarget:self action:@selector(go_toLeft_Right:) forControlEvents:UIControlEventTouchDown];
    [aButton_left addTarget:self action:@selector(stop_Left_Right:) forControlEvents:UIControlEventTouchUpInside];
    
    aButton_right = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    aButton_right.frame = CGRectMake(90,(self.view.frame.size.height)-80, 45, 45);
    aButton_right.tag =1;
    [aButton_right setImage:[UIImage imageNamed:@"right.png"] forState:false];
    [self.view addSubview:aButton_right];
    
    [aButton_right addTarget:self action:@selector(go_toLeft_Right:) forControlEvents:UIControlEventTouchDown];
    [aButton_right addTarget:self action:@selector(stop_Left_Right:) forControlEvents:UIControlEventTouchUpInside];
    
    
    //    aButton_Up = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //
    //    aButton_Up.frame = CGRectMake(50,(self.view.frame.size.height)-115, 45, 45);
    //    aButton_Up.tag =3;
    //    [aButton_Up setImage:[UIImage imageNamed:@"left.png"] forState:false];
    //    [self.view addSubview:aButton_Up];
    //
    //    aButton_Dow = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //
    //    aButton_Dow.frame = CGRectMake(50,(self.view.frame.size.height)-45, 45, 45);
    //    aButton_Dow.tag =2;
    //    [aButton_Dow setImage:[UIImage imageNamed:@"left.png"] forState:false];
    //    [self.view addSubview:aButton_Dow];
}
#pragma mark Event button Left - Right
- (void)go_toLeft_Right:(UIButton*)button {
    if (button.tag == 1) {
        NSLog(@"bt_Right");
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                 target:self
                                               selector:@selector(toLeft_img)
                                               userInfo:nil
                                                repeats:true];
    }
    if (button.tag == 0) {
        NSLog(@"bt_Left");
        timer2 = [NSTimer scheduledTimerWithTimeInterval:0.01
                                                  target:self
                                                selector:@selector(toRight_img)
                                                userInfo:nil
                                                 repeats:true];
    }
}


- (void)stop_Left_Right:(UIButton*)button{
    if (button.tag == 1) {
        [timer invalidate];
        timer = nil;
        NSLog(@"stop");
        
    }
    if (button.tag == 0) {
        [timer2 invalidate];
        timer2 = nil;
        NSLog(@"stop000");
    }
}
-(void)toLeft_img{ // button touch  -> Right
    int i=1;
    NSLog(@"1");
    self.view.frame = CGRectMake(self.view.frame.origin.x-i, self.view.frame.origin.y,
                                 self.view.frame.size.width, self.view.frame.size.height) ;
    aButton_right.frame = CGRectMake(aButton_right.frame.origin.x+i, aButton_right.frame.origin.y,
                                     aButton_right.frame.size.width, aButton_right.frame.size.height) ;
    aButton_left.frame = CGRectMake(aButton_left.frame.origin.x+i, aButton_left.frame.origin.y,
                                    aButton_left.frame.size.width, aButton_left.frame.size.height) ;
    aButton_Up.frame = CGRectMake(aButton_Up.frame.origin.x+i, aButton_Up.frame.origin.y,
                                  aButton_Up.frame.size.width, aButton_Up.frame.size.height) ;
    aButton_Dow.frame = CGRectMake(aButton_Dow.frame.origin.x+i, aButton_Dow.frame.origin.y,
                                   aButton_Dow.frame.size.width, aButton_Dow.frame.size.height) ;
    a.View_obj.frame = CGRectMake(a.View_obj.frame.origin.x+i, a.View_obj.frame.origin.y,
                                  a.View_obj.frame.size.width, a.View_obj.frame.size.height) ;
    Itiem.frame = CGRectMake(Itiem.frame.origin.x+i, Itiem.frame.origin.y,
                             Itiem.frame.size.width, Itiem.frame.size.height) ;
    
    
    
    
}
-(void)toRight_img{ // button touch  -> Left
    int i  =1;
    NSLog(@"2");
    self.view.frame = CGRectMake(self.view.frame.origin.x+i, self.view.frame.origin.y,
                                 self.view.frame.size.width, self.view.frame.size.height) ;
    aButton_right.frame = CGRectMake(aButton_right.frame.origin.x-i, aButton_right.frame.origin.y,
                                     aButton_right.frame.size.width, aButton_right.frame.size.height) ;
    aButton_left.frame = CGRectMake(aButton_left.frame.origin.x-i, aButton_left.frame.origin.y,
                                    aButton_left.frame.size.width, aButton_left.frame.size.height) ;
    a.View_obj.frame = CGRectMake(a.View_obj.frame.origin.x-i, a.View_obj.frame.origin.y,
                                  a.View_obj.frame.size.width, a.View_obj.frame.size.height) ;
    aButton_Up.frame = CGRectMake(aButton_Up.frame.origin.x-i, aButton_Up.frame.origin.y,
                                  aButton_Up.frame.size.width, aButton_Up.frame.size.height) ;
    aButton_Dow.frame = CGRectMake(aButton_Dow.frame.origin.x-i, aButton_Dow.frame.origin.y,
                                   aButton_Dow.frame.size.width, aButton_Dow.frame.size.height) ;
    Itiem.frame = CGRectMake(Itiem.frame.origin.x-i, Itiem.frame.origin.y,
                             Itiem.frame.size.width, Itiem.frame.size.height) ;
    
    
    
    
}




@end
