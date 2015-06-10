//
//  ViewController.m
//  CNotificationExample
//
//  Created by shscce on 15/5/29.
//  Copyright (c) 2015年 shscce. All rights reserved.
//

#import "ViewController.h"

#import "CNotificationManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showNormal {
    [CNotificationManager showMessage:[NSString stringWithFormat:@"this is black background"] withOptions:@{CN_TEXT_COLOR_KEY:[UIColor whiteColor],CN_BACKGROUND_COLOR_KEY:[UIColor blackColor]}];
}
- (IBAction)showStyle {
    
    [CNotificationManager showMessage:[NSString stringWithFormat:@"this is customStyle"] withOptions:@{CN_TEXT_COLOR_KEY:[UIColor yellowColor],CN_BACKGROUND_COLOR_KEY:[UIColor redColor]}];

    
}
- (IBAction)showBlock {
    [CNotificationManager showMessage:@"this is block message" withOptions:@{CN_TEXT_COLOR_KEY:[UIColor yellowColor],CN_BACKGROUND_COLOR_KEY:[UIColor redColor]} completeBlock:^{
        NSLog(@"notification display end");
    }];
}

@end
