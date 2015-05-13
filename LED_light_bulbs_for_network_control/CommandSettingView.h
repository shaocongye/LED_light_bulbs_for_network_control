//
//  CommandSettingView.h
//  LED_light_bulbs_for_network_control
//  得实指令设置界面
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface CommandSetting : NSObject
{
    NSString *_title;
    int _serial;
    BOOL _select;
    NSString *_start_time;
    NSString *_end_time;
}

@property (strong,nonatomic) NSString *title;
@property (nonatomic, assign) int serial;
@property (nonatomic, assign) BOOL select;
@property (strong,nonatomic) NSString *start_time;
@property (strong,nonatomic) NSString *end_time;

@end

@protocol CommandSettingDelegate <NSObject>

-(void) SettingCommand:(CommandSetting*)setting;

@end



@interface CommandSettingView : UIViewController
{
    CommandSetting *_setting;
}

@property (strong,nonatomic) CommandSetting *setting;

-(void) setSetting:(CommandSetting *)setting;


@end
