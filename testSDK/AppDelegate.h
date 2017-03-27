//
//  AppDelegate.h
//  testSDK
//
//  Created by nguyen tuan dang on 3/27/17.
//  Copyright © 2017 Zi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

