//
//  Course.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Course.h"
#import "Student.h"
#import "Assignment.h"

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
    self.studentsInCourse = [[NSMutableArray alloc] init];
    self.assignmentsInCourse = [[NSMutableArray alloc] init];

    NSMutableArray *students = [dictionary objectForKey:@"students"];
    for(NSDictionary *temp in students)
    {
        Student *s = [[Student alloc] initWithDictionary:temp];
        [self.studentsInCourse addObject:s];
    }
    
    NSMutableArray *assignments = [dictionary objectForKey:@"assignments"];
    for(NSDictionary *temp in assignments)
    {
        Assignment *a = [[Assignment alloc] initWithDictionary:temp];
        [self.assignmentsInCourse addObject:a];
    }

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
    NSMutableArray *students = [[NSMutableArray alloc] init];
    for(Student *currentStudent in self.studentsInCourse)
    {
      if( [currentStudent isKindOfClass:[Student class]] )
         [students addObject:currentStudent.getDictionaryVersion];
    }

    NSMutableArray *assignments = [[NSMutableArray alloc] init];
    for(Assignment *currentAssignment in self.assignmentsInCourse)
    {
        if( [currentAssignment isKindOfClass:[Assignment class]] )
            [assignments addObject:currentAssignment.getDictionaryVersion];
    }

    NSDictionary *currentDictionary = [[NSDictionary alloc] initWithObjectsAndKeys: self.sectionNumber,@"sectionID",
                                                                                    self.courseName,@"courseName",
                                                                                    self.MAX_NUMBER_OF_STUDENTS,@"maxStudents",
                                                                                    assignments,@"assignments",
                                                                                    students,@"students", nil];
    return currentDictionary;
}


@end
