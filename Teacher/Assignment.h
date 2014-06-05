//
//  Assignment.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Assignment : NSObject

@property NSString *assignmentName;
@property NSString *pointValue;
@property NSString *assignmentID;

- (Assignment *)initWithName:(NSString *)name andPoints:(NSString *)points;

@end
