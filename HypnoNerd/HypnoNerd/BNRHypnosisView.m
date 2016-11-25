//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by MAMIAN on 2016/11/24.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()

@property (strong, nonatomic) UIColor *circleColor;

@end

@implementation BNRHypnosisView



// 为图形上下文添加阴影效果的方法声明
void CGContextSetShadow (
    CGContextRef context,
    CGSize offset,
    CGFloat blur );


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGRect bounds = self.bounds;
    
    // 根据bounds计算中心点
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    
    // 根据视图宽和高中的较小值计算圆形的半径
//    float radius = (MIN(bounds.size.width, bounds.size.height) / 2.0);
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    
    // 以中心点为圆心、radius的值为半径，定义一个0到M_PI * 2.0 弧度的半径(整圆)
//    [path addArcWithCenter:center
//                    radius:radius
//                startAngle:0.0
//                  endAngle:M_PI * 2.0
//                 clockwise:YES];
    
    
    
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    // 设置线条宽度为10点
    path.lineWidth = 10;
    
    
    
    // 设置绘制颜色为浅灰色
    [self.circleColor setStroke];
    
    // 绘制路径
    [path stroke];
    
    CGRect someRect = CGRectMake(80, 80, 100, 200);
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    [logoImage drawInRect:someRect];
    
//    CGContextSaveGState(UIGraphicsGetCurrentContext());
//    CGContextSetShadow(UIGraphicsGetCurrentContext(), CGSizeMake(4, 7), 3);
    
    
//    CGFloat locations[2] = { 0.0, 1.0 };
//    CGFloat components[8] = { 1.0, 0.0, 0.0, 1.0,  //起始颜色为红色
//        1.0, 1.0, 0.0, 1.0};  // 终止颜色为黄色
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    CGGradientRef gradient = CGGradientCreateWithColorComponents(colorSpace,
//                                                                 components,
//                                                                 locations, 2);
//    
    
    
}

- (void)setCircleColor:(UIColor *)circleColor {
    _circleColor = circleColor;
    [self setNeedsDisplay];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@", self);
    float red = (arc4random() % 100) / 100.0;
    float green = (arc4random() % 100) / 100.0;
    float blue = (arc4random() % 100) / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}


@end
