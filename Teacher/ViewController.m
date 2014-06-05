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

    Student *bob = [[Student alloc] initWithFirstName:@"Bob" LastName:@"Brown" ID:@"1"];
    [self.students addObject:bob.getDictionaryVersion];

    Assignment *quiz = [[Assignment alloc] initWithName:@"Quiz 1" andPoints:@"10" andID:@"Q1"];
    [self.assignments addObject:quiz.getDictionaryVersion];

    Course *computerProgramming = [[Course alloc] initWithName:@"Computer Programming" andSection:@"001"];
    [computerProgramming addStudentToCourse:bob];
    [computerProgramming addAssignmentsToCourse:quiz];
    [self.courses addObject:computerProgramming];

    Grade *grade1 = [[Grade alloc] initWithSection:computerProgramming.sectionNumber student:bob.studentID assignment:quiz.assignmentID andGrade:@"8"];
    [self.grades addObject:grade1];

    [Persist saveArray:self.students toFile:@"students.plist"];
    [Persist saveArray:self.courses toFile:@"courses.plist"];
    [Persist saveArray:self.assignments toFile:@"assignments.plist"];
    [Persist saveArray:self.grades toFile:@"grades.plist"];

    self.currentCourse = computerProgramming;
}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    studentTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellID" forIndexPath:indexPath];

    //Student *student = [self.students objectAtIndex:indexPath.row];

    cell.textLabel.text = @"Current Name";
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
/*
- (IBAction)unwindFromNewAssignmentViewController:(UIStoryboardSegue *)segue
{
    AddAssignmentViewController *previousViewController = segue.sourceViewController;
    Assignment *newAssignment = previousViewController.newAssignment;
    [self.currentCourse addAssignmentToCourse:newAssignment];
}
*/
@end
