//
//  Owner.h
//  Forester
//
//  Created by Christian Høj on 16/10/13.
//  Copyright (c) 2013 Christian Høj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Forest.h"


@interface Owner : NSObject

@property NSString *name;
@property NSString *address;
@property NSString *zipcode;
@property NSString *town;
@property Forest *forest;

- (id)initWithName:(NSString *)name andAddress:(NSString *)address;

@end
