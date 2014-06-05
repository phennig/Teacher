//
//  Grade.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Grade.h"

@implementation Grade
- (Grade *)initWithSection:(NSString *)section student:(NSString *)student assignment:(NSString *)assignment andGrade:(NSString *)grade
{
    self.grade = grade;
    self.sectionNumber = section;
    self.assignmentID = assignment;
    self.studentID = student;
    return self;
}

- (Grade *)initWithDictionary:(NSDictionary *)dictionary
{
    self.grade = [dictionary objectForKey:@"grade"];
    self.sectionNumber = [dictionary objectForKey:@"sectionNumber"];
    self.assignmentID = [dictionary objectForKey:@"assignmentID"];
    self.studentID = [dictionary objectForKey:@"studentID"];
    return self;
}
- (NSDictionary *)getDictionaryVersion
{
    NSDictionary *currentGrade = [[NSDictionary alloc] initWithObjectsAndKeys:  self.studentID,@"studentID",
                                                                                self.assignmentID,@"assignmentID",
                                                                                self.sectionNumber,@"sectionNumber",
                                                                                self.grade,@"grade", nil];
    return currentGrade;
}
@end
