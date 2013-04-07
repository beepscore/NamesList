//
//  BSPeople.m
//  NamesList
//
//  Created by Steve Baker on 4/5/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSPeople.h"

@implementation BSPeople

- (id)init {
    self = [super init];
    if (self) {
        // Initialize self.
        self.names = [NSMutableArray arrayWithArray:@[@"Bob", @"Zebra", @"Joe", @"Collin", @"a", @"b", @"c", @"d", @"e", @"f"]];
    }
    return self;
}


@end
