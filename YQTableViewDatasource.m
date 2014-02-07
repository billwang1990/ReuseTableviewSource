//
//  SLTableViewDatasourceCell.m
//  ShuLiu
//
//  Created by niko on 14-1-9.
//  Copyright (c) 2014年 ShuLiu Group. All rights reserved.
//

#import "YQTableViewDatasource.h"

@interface YQTableViewDatasource()
{
    NSArray *items;
    NSString *cellIdentifier;
}

@property (nonatomic, copy) TableViewCellConfigureBlock  configureBlock;

@end


@implementation YQTableViewDatasource


-(id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureBlock
{
    if (self = [super init]) {
        items = anItems;
        cellIdentifier = aCellIdentifier;
        _configureBlock = [aConfigureBlock copy];
    }
    return self;
}

-(id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return items[(NSUInteger)indexPath.row];
}

#pragma mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return items.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    id item = [self itemAtIndexPath:indexPath];
    
    self.configureBlock(cell, item);
    
    return cell;
}


@end
