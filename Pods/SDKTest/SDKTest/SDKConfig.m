//
//  SDKConfig.m
//  SDKTest
//
//  Created by nguyen tuan dang on 3/27/17.
//  Copyright © 2017 Zi. All rights reserved.
//

#import "SDKConfig.h"
#import "AFNetworking.h"

@interface SDKConfig()

@property (nonatomic, strong) AFURLSessionManager *manager;

@end


@implementation SDKConfig

-(id) init
{
    self = [super init];
    if (self != nil)
    {
        self.manager = [AFURLSessionManager new];
    }
    return self;
}

- (void)getConfig:(void (^)(NSDictionary *, NSError *))handler {
    NSURL *url =  [NSURL URLWithString:@"https://raw.githubusercontent.com/nguyenhaidang/SDKTest/master/config"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSessionDownloadTask *downloadTask = [_manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *documentsDirectoryURL = [[NSFileManager defaultManager] URLForDirectory:NSDocumentDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        return [documentsDirectoryURL URLByAppendingPathComponent:[response suggestedFilename]];
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        NSData *raw = [[NSData alloc]initWithContentsOfURL:filePath];
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:raw options:NSJSONReadingMutableLeaves error:nil];
        handler(dic, error);
        
    }];
    [downloadTask resume];
}

@end
