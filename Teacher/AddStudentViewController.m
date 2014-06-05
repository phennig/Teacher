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
@property (weak, nonatomic) IBOutlet UITextField *nStudentFirstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *nStudentLastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *nStudentIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *courseTextField;

@end

@implementation AddStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onAddButtonPressed:(id)sender
{

    NSString *first = self.nStudentFirstNameTextField.text;
    NSString *last = self.nStudentLastNameTextField.text;
    NSString *ID = self.nStudentIDTextField.text;  //need to convert

    //Student *newStudent = [[Student alloc] initWithFirstName: first LastName: last ID: ID];
}
//hook button up to unwind

@end
