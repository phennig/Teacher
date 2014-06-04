//
//  Student.m
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "Student.h"

@implementation Student

- (NSString *)getLastCommaFirst
{
    return [NSString stringWithFormat:@"%@,%@",self.lastName,self.firstName];
}

@end
