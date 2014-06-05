//
//  AddAssignmentViewController.m
//  Teacher
//
//  Created by Kristen L. Fisher on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "AddAssignmentViewController.h"

@interface AddAssignmentViewController ()
@property (weak, nonatomic) IBOutlet UITextField *studentFirstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *studentLastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *studentIDTextField;
@property (weak, nonatomic) IBOutlet UITextField *assignmentNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *pointValueTextField;

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
