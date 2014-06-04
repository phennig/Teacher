//
//  Course.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject
@property NSString *courseName;
@property NSInteger sectionNumber;
@property NSInteger MAX_NUMBER_OF_STUDENTS;
@property NSMutableArray *studentsInCourse;
@end
