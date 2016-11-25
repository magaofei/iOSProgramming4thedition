//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by MAMIAN on 2016/11/25.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRHypnosisViewController.h"

@implementation BNRHypnosisViewController


- (void)loadView {
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    // 赋值给控制器的View属性
    self.view = backgroundView;
}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.tabBarItem.title = @"Hypnotize";
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;
    }
    return self;
}

- (void)viewDidLoad {
    // 必须调用super viewDidLoad
    [super viewDidLoad];
    
    NSLog(@"BNRHypnosisViewController loaded its view.");
}



@end
