//
//  EventViewController.m
//  FTFLEventManagement
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import "EventViewController.h"

@interface EventViewController ()

@end

@implementation EventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Name = [[NSMutableArray alloc] init];
      EventDateArray = [[NSMutableArray alloc] init];
    
  //  self.eventNameTwo = [[NSMutableArray alloc] init];
  //  self.eventDateListTwo = [[NSMutableArray alloc] init];
 
    
    
    if (self.eventNameTwo.count>0) {
        [Name addObjectsFromArray:self.eventNameTwo];
    }
    if (self.eventDateListTwo.count>0) {
        [EventDateArray addObjectsFromArray:self.eventDateListTwo];
    }
    
    self.DatePicker.date=[NSDate date];
    self.DatePicker.maximumDate=[NSDate
                                 dateWithTimeIntervalSinceNow:60*60*24*30];
    self.DatePicker.minimumDate=[NSDate
                                 dateWithTimeIntervalSinceNow:-60*60*24*30];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)EventName:(id)sender {
    
    
}

- (IBAction)EventDescription:(id)sender {
}
- (IBAction)DateValueChange:(id)sender {
}
- (IBAction)DatePickerValueChange:(id)sender {
    NSLog(@"%@",self.DatePicker.date);
    self.eventDate.text=[NSString stringWithFormat:@"%@", self.DatePicker.date];
}

- (IBAction)SaveEvent:(id)sender {
    
//    if ([self.eventNameTwo count] != 0) {
//        Name = self.eventNameTwo;
//    }
//    
//    if ([self.eventDateListTwo count] != 0) {
//        EventDateArray = self.eventDateListTwo;
//    }
    
    [Name addObject:self.EventName.text];
    [EventDateArray addObject:self.eventDate.text];
    [self performSegueWithIdentifier:@"FirstSegue" sender:sender];
   //NSLog(@"%@", Name);
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"FirstSegue"]) {
        EventTwoViewController *destViewController = segue.destinationViewController;;
        destViewController.eventTwoName = Name;
        destViewController.eventTwoDateList = EventDateArray;
    }
}

@end
