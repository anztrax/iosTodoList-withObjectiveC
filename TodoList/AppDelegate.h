//
//  AppDelegate.h
//  TodoList
//
//  Created by andrew ananta on 12/14/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

