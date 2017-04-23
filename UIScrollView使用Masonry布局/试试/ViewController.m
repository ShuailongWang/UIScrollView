//
//  ViewController.m
//  试试
//
//  Created by WSL on 17/4/23.
//  Copyright © 2017年 王帅龙. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CGSize size = self.view.bounds.size;
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    UIView *bgView = [[UIView alloc]init];
    [scrollView addSubview:bgView];
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"标题";
    [bgView addSubview:label];
    
    UIView *headView = [[UIView alloc]init];
    headView.backgroundColor = [UIColor greenColor];
    [bgView addSubview:headView];
    
    UIView *bottomView = [[UIView alloc]init];
    bottomView.backgroundColor = [UIColor redColor];
    [bgView addSubview:bottomView];
    
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor blueColor];
    [bgView addSubview:view1];
    
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
    }];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(bgView).offset(10);
        make.right.equalTo(bgView).offset(-10);
    }];
    [headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(label);
        make.top.equalTo(label.mas_bottom).offset(20);
        make.height.mas_equalTo(80);
    }];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(headView);
        make.top.equalTo(headView.mas_bottom).offset(20);
        make.height.mas_equalTo(900);
    }];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(bgView);
        make.top.equalTo(bottomView.mas_bottom).offset(30);
        make.height.mas_equalTo(80);
        make.bottom.equalTo(bgView);
    }];
    
}





@end
