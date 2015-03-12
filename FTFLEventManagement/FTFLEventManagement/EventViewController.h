//
//  EventViewController.h
//  FTFLEventManagement
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventTwoViewController.h"



@interface EventViewController : UIViewController

{
    NSMutableArray *Name;
    
    NSMutableArray *EventDateArray;
  
}

@property (strong) NSMutableArray *eventNameTwo;
@property (strong) NSMutableArray *eventDateListTwo;

@property (weak, nonatomic) IBOutlet UITextField *EventName;
@property (weak, nonatomic) IBOutlet UITextField *EventDescription;
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;
- (IBAction)DatePickerValueChange:(id)sender;
- (IBAction)SaveEvent:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *eventDate;

@end
