//
//  FriendsList.h
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-08-20.
//  Copyright (c) 2015 Balu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsList : UITableViewController
@property (strong, nonatomic) IBOutlet UITableView *FriendListTable;
@property (strong, nonatomic) IBOutlet UITableView *FriendList;


@property(strong, nonatomic)  NSMutableArray *chatMatesArray;
@property(strong, nonatomic)  NSString *MyId;
@end
