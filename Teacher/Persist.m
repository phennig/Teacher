//
//  Persist.m
//  TestPersist
//
//  Created by Robert D. Brown on 6/5/14.
//  Copyright (c) 2014 BobBrown. All rights reserved.
//

#import "Persist.h"

@implementation Persist

+ (void)saveArray:(NSMutableArray *)array toFile:(NSString *)file
{
    NSURL *plist = [[self documentsDirectory]URLByAppendingPathComponent:file];
    [array writeToURL:plist atomically:YES];

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSDate date] forKey:@"Latest Update"];
    [defaults synchronize];
}

+ (NSMutableArray *)load:(NSString *)file
{
    NSURL *plist = [[self documentsDirectory]URLByAppendingPathComponent:file];
    NSMutableArray *currentList = [NSMutableArray arrayWithContentsOfURL:plist];
    if (!currentList)
    {
        currentList = [NSMutableArray array];
    }
    return currentList;
}

+ (NSURL *)documentsDirectory
{
    return [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
}


@end
