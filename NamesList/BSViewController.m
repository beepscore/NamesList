//
//  BSViewController.m
//  NamesList
//
//  Created by Steve Baker on 4/5/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import "BSViewController.h"
#import "BSAppDelegate.h"

@interface BSViewController ()
@property (weak) IBOutlet UITextField *nameField;
@property (weak) IBOutlet UIButton *cancelButton;
@property (weak) IBOutlet UIButton *saveButton;
@end

@implementation BSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.nameField.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.saveButton.hidden = YES;
    self.nameField.text = self.currentName;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TextFieldDelegate methods

- (void)textFieldDidEndEditing:(UITextField *)textField {
    self.saveButton.hidden = NO;
    self.currentName = self.nameField.text;
}

# pragma mark - IBActions

- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}


- (IBAction)save:(id)sender {
    BSAppDelegate *bsAppDelegate = (BSAppDelegate *)[[UIApplication sharedApplication] delegate];
    [bsAppDelegate.people.names replaceObjectAtIndex:self.currentNameIndex
                                          withObject:self.currentName];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
