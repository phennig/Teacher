//
//  AddAssignmentViewController.m
//  Teacher
//
//  Created by Kristen L. Fisher on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "AddAssignmentViewController.h"

@interface AddAssignmentViewController ()
@property (strong, nonatomic) UITextField *studentFirstNameTextField;
@property (strong, nonatomic) UITextField *studentLastNameTextField;
@property (strong, nonatomic) UITextField *studentIDTextField;
@property (strong, nonatomic) UITextField *assignmentNameTextField;
@property (strong, nonatomic) UITextField *pointValueTextField;

@end

@implementation AddAssignmentViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onAddButtonPressed:(id)sender
{

    NSString *name = self.assignmentNameTextField.text;
    NSString *points = self.pointValueTextField;  //need to convert

    //Assignment *newAssignment = [[Assignment alloc] initWithName: name points: points];
}

@end
