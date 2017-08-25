//
//  TableViewController.m
//  MosaicDemoOC
//
//  Created by WhatsXie on 2017/8/25.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)naviPushWithTag:(NSInteger)tag {
    switch (tag) {
        case 00:
            return @"FuncUIToolbar";
            break;
        case 01:
            return @"FuncUIVisualEffectView";
            break;
        case 10:
            return @"FuncCoreImage";
            break;
        case 11:
            return @"FuncAccelerateFramework";
            break;
        default:
            return @"FuncGPUImage";
            break;
    }
}


#pragma mark - Table view data source
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *tagIndex = [NSString stringWithFormat:@"%ld%ld", indexPath.section, indexPath.row];
    NSString *className = [self naviPushWithTag:[tagIndex intValue]];
    
    ViewController *view = [ViewController new];
    view.className = className;
    [self.navigationController pushViewController:view animated:YES];
}

@end
