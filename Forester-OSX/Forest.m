//
//  Forest.m
//  Forester
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import "Forest.h"

@implementation Forest

- (id)initWithName:(NSString *)name location:(NSString *)location size:(double)squaremeters price:(double)price {
    self.name = name;
    self.location = location;
    self.squareMeters = squaremeters;
    self.price = price;
    
    return self;
}

- (double)forestValue {
    return self.squareMeters * self.price;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ in %@ is %f m2 with a price of %f", self.name, self.location, self.squareMeters, self.price];
}

@end
