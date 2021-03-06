//
//  AppDelegate.m
//  HypnoNerd
//
//  Created by MAMIAN on 2016/11/25.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisViewController.h"
#import "BNRReminderViewController.h"
@interface AppDelegate () <UIScrollViewDelegate>

@property (nonatomic, strong) BNRHypnosisView *hypnosisView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    BNRHypnosisViewController *hvc = [[BNRHypnosisViewController alloc] init];
    
//    // 获取指向NSBundle对象的指针，该NSBundle对象代表应用的主程序包
//    NSBundle *appBundle = [NSBundle mainBundle];
//    
//    // 告诉初始化方法在appBundle中查找BNRReminderViewController.xib文件
//    BNRReminderViewController *rvc = [[BNRReminderViewController alloc]
//                                      initWithNibName:@"BNRReminderViewController"
//                                      bundle:appBundle];
    // 系统会自动寻找和ViewController同名的xib
    BNRReminderViewController *rvc = [[BNRReminderViewController alloc] init];
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[hvc, rvc];
    self.window.rootViewController = tabBarController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
//    UIScrollView *scrollView = [[UIScrollView alloc] init];
//    scrollView.delegate = self;
//    [scrollView addSubview:self.hypnosisView];
//    scrollView.pagingEnabled = NO;
//    scrollView.contentSize = [UIScreen mainScreen].bounds.size;
//    [hvc.view addSubview:scrollView];
    return YES;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.hypnosisView;
}






- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
