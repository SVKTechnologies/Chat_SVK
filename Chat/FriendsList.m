//
//  FriendsList.m
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-08-20.
//  Copyright (c) 2015 Balu. All rights reserved.
//

#import "FriendsList.h"
#import <Parse/Parse.h>
#import "ChatBox.h"


@implementation FriendsList
{
    int ChatMatesCount;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return ChatMatesCount;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hi"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"hi"];
        
    }
    cell.textLabel.text = _chatMatesArray[indexPath.row];
    return  cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{


}


-(void)viewDidLoad{

    _chatMatesArray = [[NSMutableArray alloc]init];
    
    PFQuery *query = [PFUser query];
    [query orderByAscending:@"username"];
    [query whereKey:@"username" notEqualTo:@"balu.mallisetty"];
    ChatMatesCount = (int)[query countObjects];
    
    NSArray *List = [query findObjects];
    
    for(PFObject *description in List)
    {
        PFUser *user = [description objectForKey:@"username"];
        
        NSLog(@"%@",user);
      
        
        [_chatMatesArray addObject:user];
   
    }
    
    NSLog(@"%@",_chatMatesArray[4]);



}

    
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
  
    
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        
    ChatBox *VC = [segue destinationViewController];
        VC.ChatMateId = _chatMatesArray[path.row];
    
    
}
    
    





@end
