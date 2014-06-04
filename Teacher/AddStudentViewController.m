//
//  AddStudentViewController.m
//  Teacher
//
//  Created by Kristen L. Fisher on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "AddStudentViewController.h"
#import "Student.h"

@interface AddStudentViewController ()
@property (strong, nonatomic) IBOutlet UITextField *newStudentFirstNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *newStudentLastNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *newStudentIDTextField;
@property (strong, nonatomic) IBOutlet UITextField *courseTextField;

@end

@implementation AddStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onAddButtonPressed:(id)sender
{

    NSString *first = self.newStudentFirstNameTextField.text;
    NSString *last = self.newStudentLastNameTextField.text;
    NSString *temp = self.newStudentIDTextField.text;
    //NSNumber *ID = [temp integerValue];

    //Student *newStudent = [[Student alloc] initWithFirstName: first LastName: last ID: ID];

}

@end
