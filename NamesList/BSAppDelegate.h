//
//  BSAppDelegate.h
//  NamesList
//
//  Created by Steve Baker on 4/5/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSPeople.h"

@interface BSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BSPeople *people;

@end
