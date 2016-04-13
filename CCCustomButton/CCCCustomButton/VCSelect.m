//
//  VCSelect.m
//  CCCCustomButton
//
//  Created by 楚晨晨 on 16/4/13.
//  Copyright © 2016年 楚晨晨. All rights reserved.
//

#import "VCSelect.h"
#import "cccButtonCell.h"
@interface VCSelect ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *tableView;
@end

@implementation VCSelect

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createUI];
    // Do any additional setup after loading the view.
}

- (void)createUI{
    self.title = @"切换选择的button";
    self.automaticallyAdjustsScrollViewInsets = YES;
    self.tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    //注册cell
    [_tableView registerNib:[UINib nibWithNibName:@"cccButtonCell" bundle:nil] forCellReuseIdentifier:@"cccButtonCell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return  1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
   
        cccButtonCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cccButtonCell" forIndexPath:indexPath];
        [cell updateData
         ];
        return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    [tableView deselectRowAtIndexPath:indexPath animated:YES];




}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130;
    
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
