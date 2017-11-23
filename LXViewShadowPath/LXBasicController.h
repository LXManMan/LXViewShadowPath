//
//  LXBasicController.h
//  LXViewShadowPath
//
//  Created by chenergou on 2017/11/23.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIView+LXShadowPath.h"
@interface LXBasicController : UIViewController
@property(nonatomic,strong)UIImageView *shaowView;
@property(nonatomic,assign)LXShadowPathSide shadowPathSide;
@end
