//
//  CommandControllerView.m
//  LED_light_bulbs_for_network_control
//
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import "CommandControllerView.h"
#import "CommandViewCell.h"

@interface CommandControllerView ()

@end

@implementation CommandControllerView
@synthesize cmdList = _cmdList;
@synthesize cmdTableView = _cmdTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _cmdList = [[NSMutableArray alloc] init];
        _cmdCount = 0;
        
        // 初始化tableView的数据
        _cmdTableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        
        // 设置tableView的数据源
        _cmdTableView.dataSource = self;
        // 设置tableView的委托
        _cmdTableView.delegate = self;
        
        // 设置tableView的背景图
        _cmdTableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background.png"]];
        [self.view addSubview:_cmdTableView];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//构建每一行
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellWithIdentifier = @"Cell";
    CommandViewCell *cell = (CommandViewCell*)[tableView dequeueReusableCellWithIdentifier:CellWithIdentifier];
    if (cell == nil) {
        cell = [[CommandViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellWithIdentifier];
        
        
    }
    
    NSUInteger row = [indexPath row];
    
    
    CommandSetting *setting = [_cmdList objectAtIndex:row];
    
    if(setting == nil)
    {
        //new 一个新指令行
        
    } else {
        [cell setSetting:setting];
    }
    
    
    return cell;
}

//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

//设置行的颜色
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if ([indexPath row] % 2 == 0) {
//        cell.backgroundColor = [UIColor blueColor];
//    } else {
//        cell.backgroundColor = [UIColor greenColor];
//    }
}

//分段
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//指定每个分区中有多少行，默认为1
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _cmdCount;
}

//选择行触发事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//    NSString *msg = [[NSString alloc] initWithFormat:@"你选择的是:%@",[_cmdList objectAtIndex:[indexPath row]]];
//    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alert show];
}


-(void) SettingCommand:(CommandSetting *)setting
{
    
}


@end
