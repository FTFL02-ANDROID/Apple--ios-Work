//
//  ViewController.h
//  FTFLCalculator
//
//  Created by LICT 2 on 2/28/15.
//  Copyright (c) 2015 LICT 2. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum{ Plus,Minus,Multiply,Divide,Modulus} CalcOperation;



@interface ViewController : UIViewController{
    
    IBOutlet UITextField *display;
    IBOutlet UIButton *cbutton;
    NSString *storage;
    CalcOperation operation;
    
    NSMutableArray *arrmFilter;
}



- (IBAction)button1:(id)sender;

- (IBAction)button2:(id)sender;

- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
- (IBAction)button5:(id)sender;

- (IBAction)button6:(id)sender;

- (IBAction)button7:(id)sender;

- (IBAction)button8:(id)sender;

- (IBAction)button9:(id)sender;

- (IBAction)button0:(id)sender;
- (IBAction)buttonPlus:(id)sender;

- (IBAction)buttonMinus:(id)sender;

- (IBAction)buttonMultiply:(id)sender;

- (IBAction)buttonDivition:(id)sender;
- (IBAction)buttonModulas:(id)sender;
- (IBAction)buttonResult:(id)sender;

@end

