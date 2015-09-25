//
//  ChatMessage.h
//  Chat
//
//  Created by Venkata Balasu malisetty on 2015-09-23.
//  Copyright © 2015 Balu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Sinch/Sinch.h>


@interface ChatMessage : NSObject <SINMessage>

@property (nonatomic, strong) NSString* messageId;

@property (nonatomic, strong) NSArray* recipientIds;

@property (nonatomic, strong) NSString* senderId;

@property (nonatomic, strong) NSString* text;

@property (nonatomic, strong) NSDictionary* headers;

@property (nonatomic, strong) NSDate* timestamp;

@end


