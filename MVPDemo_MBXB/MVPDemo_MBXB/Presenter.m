//
//  Presenter.m
//  MVPDemo_MBXB
//
//  Created by Oboe_b on 2017/12/14.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "Presenter.h"

@implementation Presenter
- (void)usageLogic{
    NSString *content = self.model.content;
    //通过Presenter将model赋值
    [self.view showView:content];
}

@end
