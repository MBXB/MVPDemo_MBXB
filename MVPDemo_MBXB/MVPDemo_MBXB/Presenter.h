//
//  Presenter.h
//  MVPDemo_MBXB
//
//  Created by Oboe_b on 2017/12/14.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPModel.h"
#import "MVPView.h"

@interface Presenter : NSObject
@property (nonatomic,strong)MVPModel *model;
@property (nonatomic,strong)MVPView *view;
- (void)usageLogic;
@end
