//
//  Note.h
//  TodoList
//
//  Created by andrew ananta on 12/14/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import <Foundation/Foundation.h>

//NOTE : we'll use simple NSKeyArchiever protocol instead of core data

@interface Note : NSObject <NSCoding>

@property(strong,nonatomic) NSString *noteText;

//class level method , don't need to write the implementation file
+(BOOL) saveNotesToFile:(NSArray *)notes;
+(NSArray *)readNotesFromFile;
+(void)removeArchiveFile;

@end
