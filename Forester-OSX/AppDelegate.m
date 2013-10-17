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
    return aForest.name;
}


#pragma mark - NSTableViewDelegate protocol methods

- (void)tableViewSelectionDidChange:(NSNotification *)notification {
    NSLog(@"selection changed");
    
    NSTableView *tv = notification.object;
    NSInteger selectedRow = tv.selectedRow;
    Forest *selectedForest = [self.forests objectAtIndex:selectedRow];
    
    self.forestName.stringValue = selectedForest.name;
    self.forestLocation.stringValue = selectedForest.location;
    self.forestSize.stringValue = [NSString stringWithFormat:@"%f", selectedForest.squareMeters];
    self.forestPrice.stringValue = [NSString stringWithFormat:@"%f", selectedForest.price];
    self.forestValue.stringValue = [NSString stringWithFormat:@"%f", selectedForest.forestValue];
}


#pragma mark - UI action methods

- (IBAction)addForest:(id)sender {
    NSLog(@"addForest invoked");
    [self.forests addObject:[[Forest alloc] initWithName:@"Rold" location:@"Nordjylland" size:1234 price:23]];
    [self.forestTable reloadData];
}

- (IBAction)saveChanges:(id)sender {
    Forest *selectedForest = [self.forests objectAtIndex:self.forestTable.selectedRow];
    
    selectedForest.name = self.forestName.stringValue;
    selectedForest.location = self.forestLocation.stringValue;
    selectedForest.squareMeters = self.forestSize.doubleValue;
    selectedForest.price = self.forestPrice.doubleValue;
    
    [self.forestTable reloadData];
}

@end
