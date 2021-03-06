//
//  AppDelegate.h
//  Forester-OSX
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *forestTable;
@property (weak) IBOutlet NSTextField *forestName;
@property (weak) IBOutlet NSTextField *forestLocation;
@property (weak) IBOutlet NSTextField *forestSize;
@property (weak) IBOutlet NSTextField *forestPrice;
@property (weak) IBOutlet NSTextField *forestValue;

@property NSMutableArray *forests;

@end
