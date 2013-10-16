//
//  AppDelegate.m
//  Forester-OSX
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import "AppDelegate.h"
#import "Forest.h"


@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.forests = [NSMutableArray array];
}


#pragma mark - NSTableViewDataSource protocol methods

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.forests.count;
}

- (id)tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    Forest *aForest = [self.forests objectAtIndex:row];
    return aForest.description;
}


#pragma mark - UI action methods

- (IBAction)addForest:(id)sender {
    NSLog(@"addForest invoked");
    [self.forests addObject:[[Forest alloc] initWithName:@"Rold" location:@"Nordjylland" size:1234 price:23]];
    [self.forestTable reloadData];
}

@end
