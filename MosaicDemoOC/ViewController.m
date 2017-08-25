//
//  ViewController.m
//  MosaicDemoOC
//
//  Created by WhatsXie on 2017/8/25.
//  Copyright © 2017年 StevenXie. All rights reserved.
//

#import "ViewController.h"
#import "MosaicTools.h"

@interface ViewController ()
@property (strong, nonatomic) UIImageView *OimageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self createOriginalImage];
    self.title = self.className;
    
    SEL action = NSSelectorFromString(self.className);
    if (action) {
        [self performSelector:action withObject:nil];
    }
}

- (void)createOriginalImage {
    _OimageView = [UIImageView new];
    _OimageView.frame = CGRectMake(0, 0, 233, 212);
    _OimageView.center = self.view.center;
    _OimageView.image = [UIImage imageNamed:@"Oimage"];
    [self.view addSubview:_OimageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)FuncUIToolbar {
    [MosaicTools toolbarStyle:self.OimageView];
}
- (void)FuncUIVisualEffectView {
    [MosaicTools uivisualEffectViewStyle:self.OimageView];
}
- (void)FuncCoreImage {
    self.OimageView.image = [MosaicTools coreBlurImage:self.OimageView.image withBlurNumber:5];
}
- (void)FuncAccelerateFramework {
    self.OimageView.image = [MosaicTools GPUImageStyleWithImage:self.OimageView.image];
}
- (void)FuncGPUImage {
    self.OimageView.image = [MosaicTools boxblurImage:self.OimageView.image withBlurNumber:5];
}
@end
