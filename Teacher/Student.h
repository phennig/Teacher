//
//  Student.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSInteger *studentID;

- (NSString *)getLastCommaFirst;

@end
