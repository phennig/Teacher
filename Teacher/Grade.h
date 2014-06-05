//
//  Grade.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grade : NSObject
@property NSString *sectionNumber;
@property NSString *studentID;
@property NSString *assignmentID;
@property NSString *grade;
- (Grade *)initWithSection:(NSString *)section student:(NSString *)student assignment:(NSString *)assignment andGrade:(NSString *)grade;

- (Grade *)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)getDictionaryVersion;
@end
