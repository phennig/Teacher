//
//  Assignment.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Assignment.h"

@implementation Assignment

- (Assignment *)initWithName:(NSString *)name andPoints:(NSNumber *)points
{
    self = [super init];
    self.assignmentName = name;
    self.pointValue = points;

    return self;
}

@end
