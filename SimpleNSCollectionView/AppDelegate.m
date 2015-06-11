//
//  AppDelegate.m
//  SimpleNSCollectionView
//
//  Created by Jonathan Ramirez on 6/10/15.
//  Copyright (c) 2015 HeadWorkGames. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) MainViewController *mainViewController;
@end

@implementation AppDelegate
@synthesize mainViewController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

    mainViewController = [MainViewController new];
    [self.window.contentView addSubview:mainViewController.view];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
