//
//  SDKConfig.h
//  SDKTest
//
//  Created by nguyen tuan dang on 3/27/17.
//  Copyright © 2017 Zi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SDKConfig : NSObject

- (void)getConfig: (void (^)(NSDictionary *config, NSError *error)) handler;

@end
