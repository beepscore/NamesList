//
//  BSViewController.h
//  NamesList
//
//  Created by Steve Baker on 4/5/13.
//  Copyright (c) 2013 Beepscore LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSViewController : UIViewController <UITextFieldDelegate>
@property (assign) NSUInteger currentNameIndex;
@property (strong) NSString *currentName;
@end
