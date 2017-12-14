//
//  ViewController.m
//  MVPDemo_MBXB
//
//  Created by Oboe_b on 2017/12/14.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "ViewController.h"
#import "MVPView.h"
#import "Presenter.h"
#import "MVPModel.h"
//人的一生唯有学习和锻炼不可辜负
//博客http://www.2bjs.com
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战
@interface ViewController ()
@property (nonatomic,strong)Presenter *presenter;
@property (nonatomic,strong)MVPView *mvpView;
@property (nonatomic,strong)MVPModel *mvpModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化
    _presenter = [[Presenter alloc]init];
    _mvpView = [[MVPView alloc]init];
    _mvpView.frame = self.view.bounds;
    [self.view addSubview:_mvpView];
    _mvpModel = [[MVPModel alloc]init];
   
    _mvpModel.content = @"MVP模式";
    // model还没赋值---->此处在view中的是伪代码,只需要在view根据伪代码直接处理
    _presenter.model = _mvpModel;
    _presenter.view = _mvpView;
    [_presenter usageLogic];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
