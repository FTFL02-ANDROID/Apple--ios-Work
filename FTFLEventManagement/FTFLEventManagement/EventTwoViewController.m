//
//  EventTwoViewController.m
//  FTFLEventManagement
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import "EventTwoViewController.h"
#import "EventViewController.h"

@interface EventTwoViewController ()

@end

@implementation EventTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    eventTwoNameTwo = self.eventTwoName;
    eventTwoDateListTwo= self.eventTwoDateList;
    
    NSLog(@"%@", self.eventTwoName);
    NSLog(@"%@", self.eventTwoDateList);
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

- (IBAction)anotherValueAdd:(id)sender {
     [self performSegueWithIdentifier:@"SecondSegue" sender:sender];
}

- (IBAction)anotherEventAdd:(id)sender {
       [self performSegueWithIdentifier:@"FirstReturnSegue" sender:sender];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"SecondSegue"]) {
        MasterViewController *destViewController = segue.destinationViewController;;
        destViewController.masterName =  eventTwoNameTwo;
        destViewController.masterDateList = eventTwoDateListTwo;
    }
   else if ([segue.identifier isEqualToString:@"FirstReturnSegue"]) {
        EventViewController *destViewController = segue.destinationViewController;;
        destViewController.eventNameTwo =  eventTwoNameTwo;
        destViewController.eventDateListTwo = eventTwoDateListTwo;
    }
}


@end
