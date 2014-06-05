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
@property (weak, nonatomic) IBOutlet UIButton *addStudentButton;

@end

@implementation AddStudentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(IBAction)addStudentButtonPressed:(UIButton*)sender
{
    NSString *firstName = self.nStudentFirstNameTextField.text;
    NSString *lastName = self.nStudentLastNameTextField.text;
    NSString *ID = self.nStudentIDTextField.text;

    self.nStudent = [[Student alloc] initWithFirstName:firstName LastName:lastName ID:ID];

}

@end
