//
//  BNRItemsViewController.m
//  Homepwner
//
//  Created by MAMIAN on 2016/11/25.
//  Copyright © 2016年 Mark MaMian. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemsViewController ()

@property (nonatomic, strong) IBOutlet UIView *headerView;

@end

@implementation BNRItemsViewController 


- (IBAction)addNewItem:(id)sender {
    
    // 创建NSIndexPath对象， 返回第一个section的Row数量
//    NSInteger lastRow = [self.tableView numberOfRowsInSection:0];
    BNRItem *newItem = [[BNRItemStore sharedStore] creatItem];
    NSInteger lastRow = [[[BNRItemStore sharedStore] allItems]
                         indexOfObject:newItem];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:lastRow inSection:0];
    
    // 将新行插入UITableView对象
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationTop];
}

- (IBAction)toggleEditingMode:(id)sender {
    // 如果当前的视图控制对象已经处在编辑模式。。。
    if (self.isEditing) {
        // 修改按钮文字，提示用户当前的表格状态
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        
        
        // 关闭编辑模式
        [self setEditing:NO animated:YES];
    } else {
        // 修改按钮文字，提示用户当前的表格状态
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        
        
        [self setEditing:YES animated:YES];
    }
}

- (UIView *)headerView {
    if (!_headerView) {
        [[NSBundle mainBundle] loadNibNamed:@"HeaderView"
                                      owner:self
                                    options:nil];
    }
    return _headerView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    
    // 设置tableview的headerView
    UIView *header = self.headerView;
    [self.tableView setTableHeaderView:header];
    
}
- (instancetype)init {
    self = [super initWithStyle:UITableViewStylePlain];
    if(self) {
        for (int i = 0; i < 5; i++) {
            [[BNRItemStore sharedStore] creatItem];
        }
    }
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    
    [[BNRItemStore sharedStore] moveItemAtIndex:sourceIndexPath.row
                                        toIndex:destinationIndexPath.row];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 如果UITableView对象请求确认的是删除操作
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSArray *items = [[BNRItemStore sharedStore] allItems];
        BNRItem *item = items[indexPath.row];  //得到响应的行
        [[BNRItemStore sharedStore] removeItem:item];
        
        // 还要删除表格视图中的响应表格行
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return [[[BNRItemStore sharedStore] allItems] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 创建或重用UITableViewCell对象
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *item = items[indexPath.row];
    cell.textLabel.text = [item description];
    return cell;
}

@end
