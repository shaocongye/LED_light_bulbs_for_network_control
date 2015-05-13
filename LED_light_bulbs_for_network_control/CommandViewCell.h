//
//  CommandViewCell.h
//  LED_light_bulbs_for_network_control
//  得实命令列表的一行
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommandSettingView.h"

@interface CommandViewCell : UITableViewCell
{
    UITextView *_cmdTextView;
    
    UIImage *_number_img;
    UILabel *_title_lab;
    UIImage *_unselect_img;
    UIImage *_selected_img;
    UILabel *_start_lab;
    UILabel *_end_lab;
    
    CommandSetting *_setting;
}

@property (strong,nonatomic) CommandSetting *setting;

-(void) setSetting:(CommandSetting *)setting;


@end
