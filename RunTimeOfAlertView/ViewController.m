//
//  ViewController.m
//  RunTimeOfAlertView
//
//  Created by Tree on 16/9/14.
//  Copyright © 2016年 Tree. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+ActionBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.bounds = CGRectMake(0, 0, 100, 40);
    button.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2);
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonClickShowAlertView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
- (void)buttonClickShowAlertView {
    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"messahe" delegate:self cancelButtonTitle:@"cancle" otherButtonTitles:@"sure", nil];
    [alertView handleSureAction:^(NSInteger index) {
        NSLog(@"%ld",(long)index);
        
    }];
    [alertView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
