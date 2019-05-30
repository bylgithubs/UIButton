//
//  ViewController.m
//  UIButton
//
//  Created by Civet on 2019/5/20.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)createRectButton{
    //圆角类型btn:UIButtonTypeRoundedRect
    //通过类方法来创建buttonWithType:类名 + 方法名
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 100, 40);
    //设置按钮的文字内容
    //@parameter
    //P1:字符串类型，显示到按钮上的文字
    //P2:设置文字的状态类型：UIControllerStateNormal，正常状态
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    //UIControlStateHighlighted,按下状态
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor grayColor];
    
    [btn  setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //设置按下状态的颜色
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    //设置按钮风格颜色
    [btn setTintColor:[UIColor whiteColor]];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:24];
    
    [self.view addSubview:btn];
}

//创建一个可以显示图片的按钮
- (void)createImageBtn{
    //创建一个自定义类型的btn
    UIButton * btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 200, 100, 30);
    [btnImage setTitle:@"按钮01" forState:UIControlStateNormal];
    btnImage.backgroundColor = [UIColor redColor];
    UIImage *icon01 = [UIImage imageNamed:@"btn01"];
    UIImage *icon02 = [UIImage imageNamed:@"火焰.jpg"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
    //UIControlEventTouchUpInside:当手指离开屏幕并且手指的位置在按钮范围内
    //UIControlEventTouchDown:指当我们手指触碰到屏幕上时
    [btnImage addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside];
}

-(void)pressBtn{
    NSLog(@"按钮被按下");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createRectButton];
    [self createImageBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
