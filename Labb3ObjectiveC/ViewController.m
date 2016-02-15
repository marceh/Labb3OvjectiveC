//
//  ViewController.m
//  Labb3ObjectiveC
//
//  Created by Marcus on 2016-02-11.
//  Copyright © 2016 Marcus Cehlin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.items = @[@{@"name" : @"Take out the trash", @"category" : @"Home"}, @{@"name" : @"Go shopping", @"category" : @"Home"}].mutableCopy;
    self.navigationItem.title = @"To-do list";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewItem:)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-addItem

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cellInTableView"  forIndexPath: indexPath];
    NSDictionary *item = self.items[indexPath.row];
    cell.textLabel.text = item[@"name"];
    return cell;
    
}


@end
