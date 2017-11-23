
//
//  LXBasicController.m
//  LXViewShadowPath
//
//  Created by chenergou on 2017/11/23.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "LXBasicController.h"

@interface LXBasicController ()

@end

@implementation LXBasicController
-(void)setShadowPathSide:(LXShadowPathSide)shadowPathSide{
    _shadowPathSide = shadowPathSide;
    
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor =[UIColor groupTableViewBackgroundColor];
    
    
    self.shaowView =[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.shaowView.center = self.view.center;
    
    self.shaowView.image =[UIImage imageNamed:@"gougou"];
    [self.view addSubview:self.shaowView];
    
    switch (self.shadowPathSide) {
        case LXShadowPathTop:
            
            [self.shaowView LX_SetShadowPathWith:[UIColor magentaColor] shadowOpacity:0.3 shadowRadius:2 shadowSide:LXShadowPathTop shadowPathWidth:10];
            break;
        case LXShadowPathBottom:
            [self.shaowView LX_SetShadowPathWith:[UIColor greenColor] shadowOpacity:0.3 shadowRadius:2 shadowSide:LXShadowPathBottom shadowPathWidth:10];
            break;
        case LXShadowPathLeft:
            [self.shaowView LX_SetShadowPathWith:[UIColor greenColor] shadowOpacity:0.3 shadowRadius:2 shadowSide:LXShadowPathLeft shadowPathWidth:10];
            break;
        case LXShadowPathRight:
            [self.shaowView LX_SetShadowPathWith:[UIColor purpleColor] shadowOpacity:0.3 shadowRadius:2 shadowSide:LXShadowPathRight shadowPathWidth:10];
            break;
        case LXShadowPathNoTop:
            [self.shaowView LX_SetShadowPathWith:[UIColor greenColor] shadowOpacity:0.3 shadowRadius:2 shadowSide:LXShadowPathNoTop shadowPathWidth:10];
            break;
        case LXShadowPathAllSide:
            [self.shaowView LX_SetShadowPathWith:[UIColor blueColor] shadowOpacity:0.3 shadowRadius:5 shadowSide:LXShadowPathAllSide shadowPathWidth:20];
            break;
            
    }

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
