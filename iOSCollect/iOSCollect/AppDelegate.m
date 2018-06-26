//
//  AppDelegate.m
//  iOSCollect
//
//  Created by liaowei on 2018/6/26.
//  Copyright © 2018年 ijufeng. All rights reserved.
//

#import "AppDelegate.h"
#import <FoldingTabBar/YALTabBarItem.h>
#import <FoldingTabBar/YALFoldingTabBarController.h>
#import <FoldingTabBar/YALAnimatingTabBarConstants.h>
#import "HomeViewController.h"
#import "DiscoverViewController.h"
#import "MessageViewController.h"
#import "MeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setupYALTabBarController];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)setupYALTabBarController {
    UINavigationController *one = [[UINavigationController alloc] initWithRootViewController:[[HomeViewController alloc] init]];
    UINavigationController *two = [[UINavigationController alloc] initWithRootViewController:[[DiscoverViewController alloc] init]];
    UINavigationController *three = [[UINavigationController alloc] initWithRootViewController:[[MessageViewController alloc] init]];
    UINavigationController *four = [[UINavigationController alloc] initWithRootViewController:[[MeViewController alloc] init]];
    
    
    YALFoldingTabBarController *tabBarController = [[YALFoldingTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    YALTabBarItem *item1 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"nearby_icon"] leftItemImage:nil rightItemImage:nil];
    YALTabBarItem *item2 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"profile_icon"] leftItemImage:nil rightItemImage:nil];
    tabBarController.leftBarItems = @[item1, item2];
    
    YALTabBarItem *item3 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"chats_icon"] leftItemImage:nil rightItemImage:nil];
    YALTabBarItem *item4 = [[YALTabBarItem alloc] initWithItemImage:[UIImage imageNamed:@"settings_icon"] leftItemImage:nil rightItemImage:nil];
    tabBarController.rightBarItems = @[item3, item4];
    
    tabBarController.centerButtonImage = [UIImage imageNamed:@"plus_icon"];
    
    tabBarController.viewControllers = @[one, two, three, four];
    
    tabBarController.selectedIndex = 2;
    
//    tabBarController.tabBarView.extraTabBarItemHeight = YALExtraTabBarItemsDefaultHeight;
//    tabBarController.tabBarView.offsetForExtraTabBarItems = YALForExtraTabBarItemsDefaultOffset;
    tabBarController.tabBarView.backgroundColor = [UIColor colorWithRed:94.f/255.f green:91.f/255.f blue:149.f/255.f alpha:1.f];
    tabBarController.tabBarView.tabBarColor = [UIColor colorWithRed:72.f/255.f green:211.f/255.f blue:178.f/255.f alpha:1.f];
//    tabBarController.tabBarViewHeight = YALTabBarViewDefaultHeight;
//    tabBarController.tabBarView.tabBarViewEdgeInsets = YALTabBarViewHDefaultEdgeInsets;
//    tabBarController.tabBarView.tabBarItemsEdgeInsets = YALTabBarViewItemsDefaultEdgeInsets;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}


- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
