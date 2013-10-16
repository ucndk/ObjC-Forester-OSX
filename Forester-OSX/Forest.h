//
//  Forest.h
//  Forester
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Forest : NSObject

@property NSString *name;
@property NSString *location;
@property double squareMeters;
@property double price;
@property (readonly) double forestValue;

- (id)initWithName:(NSString *)name location:(NSString *)location size:(double)squaremeters price:(double)price;

@end
