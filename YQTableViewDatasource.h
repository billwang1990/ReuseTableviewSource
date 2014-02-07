//
//  SLTableViewDatasourceCell.h
//  ShuLiu
//
//  Created by niko on 14-1-9.
//  Copyright (c) 2014年 ShuLiu Group. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface YQTableViewDatasource : NSObject<UITableViewDataSource>

-(id)initWithItems:(NSArray*)anItems cellIdentifier:(NSString*)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureBlock;

-(id)itemAtIndexPath:(NSIndexPath*)indexPath;

@end
