//
//  DetailViewController.h
//  TableViewApplication
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableviewLayout;
@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIDatePicker *detailDate;
- (IBAction)detailViewchange:(id)sender;
- (IBAction)datePickerValueChange:(id)sender;

@end

