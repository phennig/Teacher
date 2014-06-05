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
#import "Grade.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *assignmentTextField;
@property Course *currentCourse;
@property Assignment *currentAssignment;
@property NSMutableArray *students;
@property NSMutableArray *courses;
@property NSMutableArray *assignments;
@property NSMutableArray *grades;
@property (weak, nonatomic) IBOutlet UIPickerView *AssignmentPickerView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.currentCourse = [[Course alloc] init];
    self.currentAssignment = [[Assignment alloc] init];

    self.students = [Persist load:@"students.plist"];
    self.courses = [Persist load:@"courses.plist"];
    self.assignments = [Persist load:@"assignments.plist"];
    self.grades = [Persist load:@"grades.plist"];

    self.currentCourse = [[Course alloc] initWithDictionary:[self.courses firstObject]];


    //self.currentAssignment = [self.currentCourse.assignmentsInCourse firstObject];

    //self.assignmentTextField.text = self.currentAssignment.assignmentName;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
}


#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.currentCourse.studentsInCourse.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    studentTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCellID" forIndexPath:indexPath];

    Student *student = [self.currentCourse.studentsInCourse objectAtIndex:indexPath.row];

    //NSString *studentID = student.studentID;
    //NSString *assignmentId = self.currentAssignment.assignmentID;
    //NSString *curentSectionId = self.currentCourse.sectionNumber;

    //student id, current assignmentid, current sectionid

    cell.textLabel.text = student.getLastCommaFirstandID;
    cell.detailTextLabel.text = @"Current Grade";
    cell.assignmentTextField.text = @"";

    return cell;
}

- (IBAction)unwindFromNewStudentViewController:(UIStoryboardSegue *)segue
{
    AddStudentViewController *previousViewController = segue.sourceViewController;
    Student *newStudent = previousViewController.nStudent;

    [self.students addObject:newStudent.getDictionaryVersion];
    [Persist saveArray:self.students toFile:@"students.plist"];

    [self.currentCourse addStudentToCourse:newStudent];
    [self.courses removeAllObjects];
    [self.courses addObject:self.currentCourse.getDictionaryVersion];
    [Persist saveArray:self.courses toFile:@"courses.plist"];

    [self.tableView reloadData];    
}

- (IBAction)unwindFromNewAssignmentViewController:(UIStoryboardSegue *)segue
{
    AddAssignmentViewController *previousViewController = segue.sourceViewController;
    Assignment *nAssignment = previousViewController.nAssignment;
    [self.currentCourse addAssignmentsToCourse:nAssignment];
    [self.assignments addObject:nAssignment.getDictionaryVersion];
    [Persist saveArray:self.assignments toFile:@"assignments.plist"];
    [Persist saveArray:self.courses toFile:@"courses.plist"];

}

@end
