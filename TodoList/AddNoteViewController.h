//
//  AddNoteViewController.h
//  TodoList
//
//  Created by andrew ananta on 12/14/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//


#import <UIKit/UIKit.h>

//Note : using import like you're ready to implement it at your class , if you don't using @class
@class Note;

@protocol AddNoteViewControllerDeletegate

-(void)saveNote:(Note *)note;

@end

@interface AddNoteViewController : UIViewController

@property (weak, nonatomic) id<AddNoteViewControllerDeletegate> delegate;

@end
