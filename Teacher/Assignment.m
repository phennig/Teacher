//
//  Assignment.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Assignment.h"

@implementation Assignment

- (Assignment *)initWithName:(NSString *)name andPoints:(NSString *)points andID:(NSString *)ID;
{
    self = [super init];
    self.assignmentName = name;
    self.pointValue = points;
    self.assignmentID = ID;

    return self;
}

- (Assignment *)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    self.assignmentName = [dictionary objectForKey:@"assignmentName"];
    self.pointValue = [dictionary objectForKey:@"pointValue"];
    self.assignmentID = [dictionary objectForKey:@"assignmentID"];

    return self;
}

- (NSDictionary *)getDictionaryVersion
{
    NSDictionary *currentAssignment = [[NSDictionary alloc] initWithObjectsAndKeys: self.assignmentID,@"assignmentID",
        self.assignmentName,@"assignmentName",
        self.pointValue,@"pointValue", nil];
    return currentAssignment;
}

@end
