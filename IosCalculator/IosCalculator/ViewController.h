//
//  ViewController.h
//  IosCalculator
//
//  Created by LICT6 on 2/28/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController

{
    NSMutableArray *result;
    
    NSString *resultString;
 
    NSString* tempResult;
    
}

@property (weak, nonatomic) IBOutlet UILabel *display;
- (IBAction)btnResult:(id)sender;
- (IBAction)btnPlus:(id)sender;
- (IBAction)btnMinus:(id)sender;
- (IBAction)btnMultiple:(id)sender;
- (IBAction)btnOne:(id)sender;
- (IBAction)btnTwo:(id)sender;
- (IBAction)btnThree:(id)sender;
- (IBAction)btnFour:(id)sender;
- (IBAction)btnFive:(id)sender;
- (IBAction)btnSix:(id)sender;
- (IBAction)btnSeven:(id)sender;
- (IBAction)btnEight:(id)sender;
- (IBAction)btnNine:(id)sender;
- (IBAction)btnMode:(id)sender;
- (IBAction)btnZero:(id)sender;
- (IBAction)btnDivid:(id)sender;

@end

