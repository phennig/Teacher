//
//  ViewController.m
//  Teacher
//
//  Created by Timothy P. Hennig on 6/3/14.
//  Copyright (c) 2014 PHMobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UITabBarDelegate, UITabBarControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *assignmentTextField;
@property NSMutableArray *students;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


}

#pragma mark - Table View

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.students.count;
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return cell;
//}

@end
