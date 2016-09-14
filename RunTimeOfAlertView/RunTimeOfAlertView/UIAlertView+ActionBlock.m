//
//  UIAlertView+ActionBlock.m
//  TreeOfDream
//
//  Created by Tree on 16/8/11.
//  Copyright © 2016年 Tree. All rights reserved.
//

#import "UIAlertView+ActionBlock.h"

#import <objc/runtime.h>

static void *KAlertViewActionKey = "alertViewKey";

@implementation UIAlertView (ActionBlock)

- (void)handleSureAction:(handleAction)handle {
    self.delegate = self;
    objc_setAssociatedObject(self, _cmd, handle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    handleAction handle = objc_getAssociatedObject(self, @selector(handleSureAction:));
    handle(buttonIndex);
}


@end
