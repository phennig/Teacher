//
//  Course.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Assignment.h"
#import "Grade.h"

@interface Course : NSObject

@property NSString *courseName;
@property NSString *sectionNumber;
@property NSString *MAX_NUMBER_OF_STUDENTS;
@property NSMutableArray *studentsInCourse;
@property NSMutableArray *assignmentsInCourse;

- (Course *)initWithName:(NSString *)name andSection:(NSString *)section;
- (Course *)initWithDictionary:(NSDictionary *)dictionary;
- (void)addStudentToCourse:(Student *)student;
- (void)addAssignmentsToCourse:(Assignment *)assignment;
- (NSDictionary *)getDictionaryVersion;
@end
