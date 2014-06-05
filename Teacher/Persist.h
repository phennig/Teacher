//
//  Persist.h
//  TestPersist
//
//  Created by Robert D. Brown on 6/5/14.
//  Copyright (c) 2014 BobBrown. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persist : NSObject
+ (void)saveArray:(NSMutableArray *)array toFile:(NSString *)file;
+ (NSMutableArray *)load:(NSString *)file;
@end
