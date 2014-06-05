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
#import "AddAssignmentViewController.h"
#import "Student.h"
#import "Assignment.h"
#import "Course.h"
#import "Persist.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *assignmentTextField;
@property Course *currentCourse;
@property NSMutableArray *students;
@property NSMutableArray *courses;
@property NSMutableArray *assignments;
@property NSMutableArray *grades;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.students = [Persist load:@"students.plist"];
    self.courses = [Persist load:@"courses.plist"];
    self.assignments = [Persist load:@"assignments.plist"];
    self.grades = [Persist load:@"grades.plist"];

    self.currentCourse = [[Course alloc] initWithName:@"Computer Programming" andSection:@"001"];
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.students.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    studentTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellID" forIndexPath:indexPath];

    Student *student = [self.students objectAtIndex:indexPath.row];

    cell.textLabel.text = student.lastName; //dammit!!! I'm stuck!!!!!!!!!
    cell.detailTextLabel.text = @"Current Grade";
    cell.assignmentTextField.text = @"10";
    return cell;
}


- (IBAction)unwindFromNewStudentViewController:(UIStoryboardSegue *)segue
{
    AddStudentViewController *previousViewController = segue.sourceViewController;
    Student *newStudent = previousViewController.nStudent;
    [self.currentCourse addStudentToCourse:newStudent];
}

- (IBAction)unwindFromNewAssignmentViewController:(UIStoryboardSegue *)segue
{
    AddAssignmentViewController *previousViewController = segue.sourceViewController;
    Assignment *nAssignment = previousViewController.nAssignment;
    [self.currentCourse addAssignmentsToCourse:nAssignment];
}

@end
