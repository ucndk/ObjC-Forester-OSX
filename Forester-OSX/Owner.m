//
//  Owner.m
//  Forester
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import "Owner.h"

@implementation Owner

- (id)initWithName:(NSString *)name andAddress:(NSString *)address {
    self.name = name;
    self.address = address;
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@\n%@\nOwns %@", self.name, self.address, self.forest];
}

@end
