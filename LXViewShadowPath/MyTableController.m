//
//  MyTableController.m
//  LXViewShadowPath
//
//  Created by chenergou on 2017/11/23.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "MyTableController.h"
#import "LXBasicController.h"
@interface MyTableController ()
@property(nonatomic,strong)NSArray *dataA;
@end

@implementation MyTableController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.title = @"UIView设置局部阴影";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataA.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.dataA[indexPath.row];
    // Configure the cell...
    
    
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    LXBasicController *changeVc =[[LXBasicController alloc]init];
    
    switch (indexPath.row) {
        case 0:
            changeVc.shadowPathSide = LXShadowPathTop;
            break;
        case 1:
            changeVc.shadowPathSide = LXShadowPathBottom;
            break;

        case 2:
            changeVc.shadowPathSide = LXShadowPathLeft;
            break;
        case 3:
            changeVc.shadowPathSide = LXShadowPathRight;
            break;
        case 4:
            changeVc.shadowPathSide = LXShadowPathNoTop;
            break;

        case 5:
            changeVc.shadowPathSide = LXShadowPathAllSide;
            break;

    }
        
    [self.navigationController pushViewController:changeVc animated:YES];
}
-(NSArray *)dataA{
    if (!_dataA) {
        _dataA  = @[@"顶部阴影",@"底部阴影",@"左侧阴影",@"右侧阴影",@"左右底部阴影",@"四周"];
    }
    return _dataA;
}

@end
