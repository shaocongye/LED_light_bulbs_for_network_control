//
//  CommandControllerView.h
//  LED_light_bulbs_for_network_control
//  用来显示得实集团的单灯控制器的指令别表,其实是一个tableview
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommandSettingView.h"



@interface CommandControllerView : UIViewController<UITableViewDataSource,UITableViewDelegate,CommandSettingDelegate>
{
    int _cmdCount;
    NSMutableArray *_cmdList;
    UITableView *_cmdTableView;
}

@property (nonatomic, retain) NSMutableArray *cmdList;
@property (nonatomic, retain) UITableView *cmdTableView;

@end
