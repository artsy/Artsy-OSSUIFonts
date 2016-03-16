//
//  ARAppDelegate.m
//  FontApp
//
//  Created by Orta on 6/20/14.
//  Copyright (c) 2014 Orta. All rights reserved.
//

#import "ARAppDelegate.h"

@implementation ARAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor colorWithRed:1.000 green:0.820 blue:1.000 alpha:1.000];
    [self.window makeKeyAndVisible];

    self.window.rootViewController = [[UIViewController alloc] init];
    
    NSLog(@"This Demo application is only provided to host the font files. Run the unit tests.");
    return YES;
}

@end
