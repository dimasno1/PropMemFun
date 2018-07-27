//
//  AppDelegate.m
//  PropMemFun
//
//  Created by Dimasno1 on 7/26/18.
//  Copyright © 2018 dimasno1. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UITableViewController* rootViewController = [[TableViewController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame: UIScreen.mainScreen.bounds];
    self.window.rootViewController = rootViewController;
    
    [[self window] makeKeyAndVisible];
    
    return YES;
}

@end
