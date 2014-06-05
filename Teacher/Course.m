//
//  Course.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Course.h"

@implementation Course

- (Course *)initWithName:(NSString *)name andSection:(NSString *)section
{
    self = [super init];
    self.courseName = name;
    self.sectionNumber = section;
    self.MAX_NUMBER_OF_STUDENTS = @"24";
    self.assignmentsInCourse = [[NSMutableArray alloc] init];
    self.studentsInCourse = [[NSMutableArray alloc] init];

    return self;
}

- (void)addStudentToCourse:(Student *)student
{
    [self.studentsInCourse addObject:student];
}

- (void)addAssignmentsToCourse:(Assignment *)assignment
{
    [self.assignmentsInCourse addObject:assignment];
}

@end
