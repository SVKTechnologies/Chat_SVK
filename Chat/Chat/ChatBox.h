//
//  ChatBox.h
//  
//
//  Created by Venkata Balasu malisetty on 2015-08-22.
//
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "ChatMessage.h"
#import "AppDelegate.h"

@interface ChatBox : UITableViewController
@property (strong, nonatomic)NSString *ChatMateId;
@property (strong, nonatomic)NSString *MyId;
@property (strong, nonatomic) IBOutlet UITableView *Chat_Box;
@property (strong, nonatomic) NSMutableArray *MessageArray;


@end
