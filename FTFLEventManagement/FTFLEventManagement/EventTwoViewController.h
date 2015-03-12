//
//  EventTwoViewController.h
//  FTFLEventManagement
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterViewController.h"

@interface EventTwoViewController : UIViewController
{
     NSMutableArray* eventTwoNameTwo;
     NSMutableArray* eventTwoDateListTwo;
}
@property (strong) NSMutableArray* eventTwoName;
@property (strong) NSMutableArray* eventTwoDateList;
- (IBAction)anotherValueAdd:(id)sender;
- (IBAction)anotherEventAdd:(id)sender;

@end
