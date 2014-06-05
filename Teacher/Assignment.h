//
//  Assignment.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Course.h"

@interface Assignment : NSObject

@property NSString *assignmentName;
@property NSNumber *pointValue;
@property NSNumber *assignmentID;

- (Assignment *)initWithName:(NSString *)name andPoints:(NSNumber *)points;

@end
