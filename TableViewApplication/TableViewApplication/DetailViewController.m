//
//  DetailViewController.m
//  TableViewApplication
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    self.detailDate.date=[NSDate date];
    self.detailDate.maximumDate=[NSDate
        dateWithTimeIntervalSinceNow:60*60*24*5];
    self.detailDate.minimumDate=[NSDate
                                 dateWithTimeIntervalSinceNow:-60*60*24*5];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   // return self.objects.count;
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
  //  NSDate *object = self.objects[indexPath.row];
    cell.textLabel.text = @"test data";
    cell.detailTextLabel.text = @"new subtitle";
    return cell;
}


- (IBAction)detailViewchange:(id)sender {
}

- (IBAction)datePickerValueChange:(id)sender {
    
    NSLog(@"%@",self.detailDate.date);
    self.detailDescriptionLabel.text=[NSString stringWithFormat:@"%@", self.detailDate.date];
}
@end
