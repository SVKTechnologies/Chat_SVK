//
//  LoginScene.m
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-08-20.
//  Copyright (c) 2015 Balu. All rights reserved.
//

#import "LoginScene.h"
#import <Parse/Parse.h>


@implementation LoginScene




-(void)viewDidLoad{
    
    _PromtLabel.text = @"Please Enter Your Details";
    UITapGestureRecognizer *tapViewGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapOnView)];
    [self.view addGestureRecognizer:tapViewGR];

}

- (IBAction)Login:(id)sender {
 
    NSError *Error_Login = [[NSError alloc]init];
    [PFUser logInWithUsername:_UserName.text password:_Password.text error:&Error_Login];
    
    if ([Error_Login.userInfo objectForKey:@"error"] != nil) {
       _PromtLabel.text = [Error_Login.userInfo objectForKey:@"error"];
    }

    else

    {
       _PromtLabel.text =  @"login Sucess";
         [self performSegueWithIdentifier:@"ChatList" sender:self];
    }
   

}
- (IBAction)SignUp:(id)sender {
   
    NSLog(@"%@ %@",_UserName.text,_Password.text);
    
    NSError *error_signup = [[NSError alloc]init];
    PFUser *pfuser = [PFUser user];
    pfuser.username = _UserName.text;
    pfuser.password = _Password.text;
    if (_UserName.text.length < 1 || _Password.text.length < 1) {
        _PromtLabel.text = @"User Name(&)Password Should be minimum 6 characters Length";
        return;
    }
    
    
    
    NSLog(@"%@ %@",_UserName.text,_Password.text);
    
    [pfuser signUp:&error_signup];
    if (error_signup.code == 0) {
        _PromtLabel.text = @"Signup Sucess";
    
        
    }
    else{
        _PromtLabel.text = [error_signup.userInfo valueForKey:@"error"];
    }
}

// Tab the view to dismiss keyboard
- (void)didTapOnView {
    [self.UserName resignFirstResponder];
    [self.Password resignFirstResponder];
}


@end
