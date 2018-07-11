//
//  ViewController.m
//  FF_UIViewChain
//
//  Created by mac on 2018/7/11.
//  Copyright © 2018年 healifeGroup. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+Chain.h"
#import "UIView+Chain.h"
#import "UIButton+Chain.h"

#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    style.lineSpacing = 10;
    style.alignment = NSTextAlignmentCenter;
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"电费卡时代峻峰时代峰峻阿萨德了飞机阿里山的风景ADSL发多少发送卡的房间爱上代理费" attributes:@{NSParagraphStyleAttributeName : style}];
    
    UILabel *label = [UILabel initInstance];
    
    [label
     .textAlignment1(NSTextAlignmentCenter)
     .frame1(CGRectMake(100, 100, 200, 100))
     .text1(@"电费卡时代峻峰时代峰")
     .font1([UIFont systemFontOfSize:18])
     .textColor1([UIColor whiteColor])
     .backgroundColor1([UIColor orangeColor])
     .numberOfLines1(0)
     .attributedText1(str)
     .shadowColor1([UIColor cyanColor])
     .shadowOffset1(CGSizeMake(2, -2))
     .addAction(self,@selector(tapAction:))
     .lineBreakMode1(NSLineBreakByTruncatingTail)
     .superView1(self.view)
     constraint:^(MASConstraintMaker *make) {
         make.centerX.equalTo(self.view);
         make.top.equalTo(self.view).offset(100);
         make.width.and.height.mas_equalTo(200);
     }];
    
    
    [[[UIView alloc] init]
     .backgroundColor1([UIColor redColor])
     .cornerRadius1(50)
     .borderColor1([UIColor cyanColor])
     .borderWidth1(5)
     //.hidden1(YES)
     .addAction(self,@selector(tapAction:))
     .superView1(self.view)
     constraint:^(MASConstraintMaker *make) {
         make.centerX.equalTo(self.view);
         make.top.equalTo(self.view).offset(400);
         make.width.and.height.mas_equalTo(100);
     }];
    
    
    [UIButton initInstance]
    .frame1(CGRectMake(100, 600, 200, 100))
    .backgroundColor1([UIColor purpleColor])
    .setTitle(@"点击按钮点击按钮点击按钮点击按钮",UIControlStateNormal)
    .setTitleColor([UIColor whiteColor],UIControlStateNormal)
    .setTitleShadowColor([UIColor cyanColor],UIControlStateNormal)
    .titleShadowOffset1(CGSizeMake(2, 2))
    .font1([UIFont systemFontOfSize:20])
    //.lineBreakMode1(NSLineBreakByTruncatingTail)
    .numberOfLines(0)
    .textAlignment(NSTextAlignmentRight)
    .addAction(self,@selector(buttonAction:))
    .superView1(self.view);
    
}

-(void)tapAction:(UITapGestureRecognizer *)sender{
    NSLog(@"---- 艹 点击我了 ----");
}

- (void)buttonAction:(UIButton *)sender{
    
    NSLog(@"---- 点击按钮 ----");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
