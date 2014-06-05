//
//  Student.h
//  Teacher
//
//  Created by Robert D. Brown on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property NSString *firstName;
@property NSString *lastName;
@property NSString *studentID;

- (Student *)initWithFirstName:(NSString *)first LastName:(NSString *)last ID:(NSString *)studentID;
- (Student *)initWithDictionary:(NSDictionary *)dictionary;
- (NSString *)getLastCommaFirstandID;
- (NSDictionary *)getDictionaryVersion;

@end
