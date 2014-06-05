//
//  Student.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Student.h"

@implementation Student

- (Student *)initWithFirstName:(NSString *)first LastName:(NSString *)last ID:(NSString *)studentID
{
    self = [super init];
    self.firstName = first;
    self.lastName = last;
    self.studentID = studentID;
    return self;
}


- (NSString *)getLastCommaFirstandID
{
    return [NSString stringWithFormat:@"%@,%@   ID:%@",self.lastName,self.firstName,self.studentID];
}


@end
