//
//  Course.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Course.h"

@implementation Course

- (Course *)initWithName:(NSString *)name andSection:(NSNumber *)section
{
    self = [super init];
    self.courseName = name;
    self.sectionNumber = section;
    self.MAX_NUMBER_OF_STUDENTS = @24;
    self.assignmentsInCourse = [[NSMutableArray alloc] init];
    self.studentsInCourse = [[NSMutableArray alloc] init];

    return self;
}

- (Course *)initWithData:(NSData *)data
{
    //stuff here;
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

- (NSData *)getData
{
    NSData *dataRepresentationOfCourse = [[NSData alloc] init];
    //stuff here;
    return dataRepresentationOfCourse;
}

@end
