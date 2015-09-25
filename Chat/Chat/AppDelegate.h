//
//  AppDelegate.h
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-08-19.
//  Copyright (c) 2015 Balu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "ChatModuleKeys.h"
#import <Sinch/Sinch.h>
#import "ChatModuleKeys.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate,SINClientDelegate, SINMessageClientDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) id<SINClient> sinchClient;
@property (strong, nonatomic) id<SINMessageClient> sinchMessageClient;
- (void)initSinchClient:(NSString*)userId;
- (void)sendTextMessage:(NSString *)messageText toRecipient:(NSString *)recipientID;


@end

