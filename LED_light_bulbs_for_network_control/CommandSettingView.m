//
//  CommandSettingView.m
//  LED_light_bulbs_for_network_control
//
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import "CommandSettingView.h"

@interface CommandSetting ()

@end

@implementation CommandSetting
@synthesize title = _title;
@synthesize serial = _serial;
@synthesize select = _select;
@synthesize start_time = _start_time;
@synthesize end_time = _end_time;




@end

@interface CommandSettingView ()

@end

@implementation CommandSettingView
@synthesize setting = _setting;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) setSetting:(CommandSetting *)setting
{
    //设置界面
    
}


@end
