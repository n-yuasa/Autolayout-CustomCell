//
//  ViewController.m
//  Autolayout+CustomCell
//
//  Copyright (c) 2014年 test.org. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

static NSString *const kReuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *cellNib = [UINib nibWithNibName:@"CustomCell" bundle:nil];
    [_tableView registerNib:cellNib forCellReuseIdentifier:kReuseIdentifier];
    _tableView.rowHeight = 300.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark --- UITableViewDataSource ---
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];
    
    return cell;
}

@end
