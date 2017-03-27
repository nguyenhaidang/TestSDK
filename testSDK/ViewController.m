//
//  ViewController.m
//  testSDK
//
//  Created by nguyen tuan dang on 3/27/17.
//  Copyright © 2017 Zi. All rights reserved.
//

#import "ViewController.h"
#import "SDKConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[SDKConfig new]getConfig:^(NSDictionary *config, NSError *error) {
        NSLog(@"%@",config);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
