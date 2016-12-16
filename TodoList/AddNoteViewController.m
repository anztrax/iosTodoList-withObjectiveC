//
//  AddNoteViewController.m
//  TodoList
//
//  Created by andrew ananta on 12/14/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "AddNoteViewController.h"
#import "Note.h"

@interface AddNoteViewController () <UITextFieldDelegate>

//Note : same like IBAction , IBOutlet is kind to tell the xib file, there's someting that related to the xib view
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation AddNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
 Note : if you want your method to be recognized by xib file change the return to IBAction
        IB stands for Interface Builder
 */
- (IBAction)cancelButtonTapped:(id)sender{
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
  [textField resignFirstResponder];
   
  Note *note =  [[Note alloc]init];
  note.noteText = textField.text;
  
  [self.delegate saveNote:note];
  return YES;
}

@end
