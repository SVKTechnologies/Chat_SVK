//
//  LoginScene.h
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-08-20.
//  Copyright (c) 2015 Balu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginScene : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *UserName;

@property (weak, nonatomic) IBOutlet UITextField *Password;
@property (weak, nonatomic) IBOutlet UILabel *PromtLabel;

@end
