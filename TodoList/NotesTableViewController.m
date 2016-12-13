//
//  NotesTableTableViewController.m
//  TodoList
//
//  Created by andrew ananta on 12/14/16.
//  Copyright © 2016 andrew ananta. All rights reserved.
//

#import "NotesTableViewController.h"
#import "Note.h"
#import "AddNoteViewController.h"

//this is private interface
@interface NotesTableViewController ()

@property (copy, nonatomic) NSArray *notes;

@end

@implementation NotesTableViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  self.title = @"Todo List";
  
  Note *note1 = [[Note alloc]init];
  note1.noteText = @"learn objective C";
  
  Note *note2 = [[Note alloc]init];
  note2.noteText = @"learn react native";
  
  Note *note3 = [[Note alloc]init];
  note3.noteText = @"learn swift";
  
  self.notes = @[note1, note2, note3];
  
  UIBarButtonItem *addButton = [[UIBarButtonItem alloc]
                                initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                target:self
                                action:@selector(addButtonTapped:)];
  self.navigationItem.rightBarButtonItem = addButton;
}

-(void)addButtonTapped:(id)sender{
  AddNoteViewController *addNoteViewController = [[AddNoteViewController alloc]
                                                  initWithNibName:@"NoteViewController"
                                                  bundle:[NSBundle mainBundle]];
  
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  
  //when calling @"NoteCell" give them UITableViewCell for dequeuReusableCellWithIndetifier purpose
  [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"NoteCell"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   return self.notes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"NoteCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier]  ;
  
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:CellIdentifier];
    
    Note *note = self.notes[indexPath.row];
    cell.textLabel.text = note.noteText;
  }

  return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
