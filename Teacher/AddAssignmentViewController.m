//
//  AddAssignmentViewController.m
//  Teacher
//
//  Created by Kristen L. Fisher on 6/4/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "AddAssignmentViewController.h"

@interface AddAssignmentViewController ()

@property (weak, nonatomic) IBOutlet UITextField *assignmentNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *pointValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *assignmentID;
@property (weak, nonatomic) IBOutlet UIButton *addAssignmentButton;

@end

@implementation AddAssignmentViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(IBAction)addAssignmentButtonPressed:(UIButton *)sender
{
    NSString *assignment = self.assignmentNameTextField.text;
    NSString *points = self.pointValueTextField.text;
    NSString *assignmentID = self.assignmentNameTextField.text;
    self.nAssignment = [[Assignment alloc] initWithName:assignment andPoints:points andID:assignmentID];

}


@end
