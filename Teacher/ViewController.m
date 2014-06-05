//
//  ViewController.m
//  Teacher
//
//  Created by Timothy P. Hennig on 6/3/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "studentTableCell.h"
#import "AddStudentViewController.h"
//#import "AddAssignmentViewController.h"
#import "Student.h"
#import "Course.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *assignmentTextField;
@property Course *currentCourse;
@property NSMutableArray *students;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.currentCourse = [[Course alloc] initWithName:@"Computer Programming" andSection:@"001"];

}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    studentTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellID" forIndexPath:indexPath];

    cell.textLabel.text = @"Name will be here";
    cell.detailTextLabel.text = @"Current Grade";
    cell.assignmentTextField.text = @"10";
    return cell;
}

- (IBAction)unwindFromNewStudentViewController:(UIStoryboardSegue *)segue
{
    AddStudentViewController *previousViewController = segue.sourceViewController;
    Student *nStudent = previousViewController.nStudent;
    [self.currentCourse addStudentToCourse:nStudent];
}
/*
- (IBAction)unwindFromNewAssignmentViewController:(UIStoryboardSegue *)segue
{
    AddAssignmentViewController *previousViewController = segue.sourceViewController;
    Assignment *newAssignment = previousViewController.newAssignment;
    [self.currentCourse addAssignmentToCourse:newAssignment];
}
*/
@end
