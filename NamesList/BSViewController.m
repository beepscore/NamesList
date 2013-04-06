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
    @end

@implementation BSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.nameField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)done:(id)sender {
    NSLog(@"done tapped");
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


#pragma mark - TextFieldDelegate methods

- (void)textFieldDidEndEditing:(UITextField *)textField {

    BSAppDelegate *bsAppDelegate = (BSAppDelegate *)[[UIApplication sharedApplication] delegate];
    [bsAppDelegate.people.names replaceObjectAtIndex:bsAppDelegate.people.currentNameIndex
                                          withObject:textField.text];
}


- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
    
}


@end
