//
//  Course.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Course.h"

@interface Course ()

@end


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

- (Course *)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    self.courseName = [dictionary objectForKey:@"courseName"];
    self.sectionNumber = [dictionary objectForKey:@"sectionID"];
    self.MAX_NUMBER_OF_STUDENTS = [dictionary objectForKey:@"maxStudents"];
    self.assignmentsInCourse = [dictionary objectForKey:@"assignments"];
    self.studentsInCourse = [dictionary objectForKey:@"students"];

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

- (NSDictionary *)getDictionaryVersion
{
    NSDictionary *currentDictionary = [[NSDictionary alloc] initWithObjectsAndKeys: self.sectionNumber,@"sectionID",
                                                                                    self.courseName,@"courseName",
                                                                                    self.MAX_NUMBER_OF_STUDENTS,@"maxStudents",
                                                                                    self.assignmentsInCourse,@"assignments",
                                                                                    self.studentsInCourse,@"students", nil];
    return currentDictionary;
}


@end
