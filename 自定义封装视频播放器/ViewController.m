//
//  ViewController.m
//  自定义封装视频播放器
//
//  Created by 吴德文 on 16/10/31.
//  Copyright © 2016年 XiangYuKeJi. All rights reserved.
//

#import "ViewController.h"
#import "WDWMoviePlayerController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"播放视频" forState:UIControlStateNormal];
    btn.frame = CGRectMake((self.view.frame.size.width-100)/2, (self.view.frame.size.height-100)/2, 100, 100);
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)btnClicked
{
    WDWMoviePlayerController *moviePlayerVC = [[WDWMoviePlayerController alloc] init];
    [self presentViewController:moviePlayerVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
