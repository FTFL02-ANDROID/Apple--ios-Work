//
//  DetailViewController.h
//  FTFLEventManagement
//
//  Created by LICT6 on 3/7/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

