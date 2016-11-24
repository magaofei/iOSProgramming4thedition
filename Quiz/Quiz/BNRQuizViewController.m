//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by MAMIAN on 2016/11/23.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

//跟踪用户正在回答的问题
@property (nonatomic) int currentQuestionIndex;
//存储一些列问题和答案
@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

// xib会调用
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    // 调用父类实现的初始化方法
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // 创建两个数组对象，存储所需的问题和答案
        // 同时讲questions和answers分别指向问题数组和答案数组
        self.questions = @[@"From what is cognac made?",
                           @"what is 7+7?",
                           @"what is the capital of Vermont?"];
        self.answers = @[@"Grapes",
                         @"14",
                         @"Montpelier"];
    }
    //返回新对象的地址
    return self;
}

- (IBAction)showQuestion:(id)sender {
    
    self.currentQuestionIndex++;
    
    // 是否已经回答完了所有问题？
    if (self.currentQuestionIndex == [self.questions count]) {
        //回到第一个问题
        self.currentQuestionIndex = 0;
    }
    
    //根据正在回答的问题序号从数组中取出问题字符串
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    self.answerLabel.text = @"???";
    
}

- (IBAction)showAnswer:(id)sender {
    NSString *answer = self.answers[self.currentQuestionIndex];
    self.answerLabel.text = answer;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
