//
//  BSTableViewController.m
//  NamesList
//
//  Created by Steve Baker on 4/5/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSTableViewController.h"
#import "BSAppDelegate.h"
#import "BSViewController.h"

@interface BSTableViewController ()
@property (weak) BSAppDelegate *bsAppDelegate;
@property (weak) BSViewController *bsViewController;
@property (strong) NSMutableArray *names;
@end

@implementation BSTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.bsAppDelegate = (BSAppDelegate *)[[UIApplication sharedApplication] delegate];
    self.names = self.bsAppDelegate.people.names;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = self.names[indexPath.row];
    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Storyboard segue creates and pushes another view controller, so don't need to do that here.
    // tableView:didSelectRowAtIndexPath: is called after prepareForSegue:sender:
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"editName"]) {
        
        self.bsViewController = (BSViewController*)segue.destinationViewController;
        
        // get selectedRow. sender cell contains text but not table view row number.
        NSUInteger selectedRow = [[self.tableView indexPathForSelectedRow] row];
        self.bsViewController.currentNameIndex = selectedRow;
        self.bsViewController.currentName = self.names[selectedRow];
    }
}

@end
