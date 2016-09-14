//
//  UIAlertView+ActionBlock.h
//  TreeOfDream
//
//  Created by Tree on 16/8/11.
//  Copyright © 2016年 Tree. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^handleAction)(NSInteger index) ;


@interface UIAlertView (ActionBlock)<UIAlertViewDelegate>


/** 通过RunTime添加方法可以实现，也可以通过继承的方法实现 */

/**
 UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"other",@"otherOne", nil];
 [alert handleSureAction:^(NSInteger index) {
 
 //可以直接在block中处理点击事件，不用为一个类中使用多个AlertView区分烦恼
 
 
 NSLog(@"%ld",index);
 
 }];
 [alert show];
 */

- (void) handleSureAction:(handleAction) handle ;

@end
