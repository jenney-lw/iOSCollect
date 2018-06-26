//
//  MessageViewController.m
//  iOSCollect
//
//  Created by liaowei on 2018/6/26.
//  Copyright © 2018年 ijufeng. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()

@end

@implementation MessageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.title = @"消息";
    self.view.backgroundColor = [UIColor colorWithRed:94.f/255.f green:91.f/255.f blue:149.f/255.f alpha:1.f];
    
}


#pragma mark - YALTabBarInteracting
- (void)tabBarViewWillCollapse {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}


- (void)tabBarWillExpand:(YALFoldingTabBar *)tabBar {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}

- (void)tabBarDidCollapse:(YALFoldingTabBar *)tabBar {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}

- (void)tabBarDidExpand:(YALFoldingTabBar *)tabBar {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}

- (void)tabBarDidSelectExtraLeftItem:(YALFoldingTabBar *)tabBar {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}

- (void)tabBarDidSelectExtraRightItem:(YALFoldingTabBar *)tabBar {
    NSLog(@"Running %@ '%@'", self.class, NSStringFromSelector(_cmd));
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
    }];
    
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
