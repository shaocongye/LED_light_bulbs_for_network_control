//
//  CommandViewCell.m
//  LED_light_bulbs_for_network_control
//
//  Created by mac book on 15-4-15.
//  Copyright (c) 2015年 mac book. All rights reserved.
//

#import "CommandViewCell.h"

@implementation CommandViewCell
@synthesize setting = _setting;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setSetting:(CommandSetting *)setting
{
    _setting = setting;
    _title_lab.text = _setting.title;
//    _setting.select
    _start_lab.text = _setting.start_time;
    _end_lab.text = _setting.end_time;

}

@end
