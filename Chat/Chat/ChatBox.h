//
//  ChatBox.h
//  
//
//  Created by Venkata Balasu malisetty on 2015-08-22.
//
//

#import <UIKit/UIKit.h>

@interface ChatBox : UITableViewController
@property (strong, nonatomic)NSString *ChatMateId;
@property (strong, nonatomic) IBOutlet UITableView *Chat_Box;

@end
