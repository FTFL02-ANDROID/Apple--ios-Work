//
//  ViewController.m
//  IosCalculator
//
//  Created by LICT6 on 2/28/15.
//  Copyright (c) 2015 LICT6. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    result = [[NSMutableArray alloc] init];
    resultString = [[NSString alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnResult:(id)sender {
    
    while ([result count]>1) {
        
        for (int i=0; i<[result count];i++) {
            if ([[result objectAtIndex:i] isEqualToString:@"/"]) {
                //your code here
                
                int valOne = i-1;
                int valTwo = i+1;
                
             float   a = [[result objectAtIndex:valOne] floatValue];
            float    b = [[result objectAtIndex:valTwo] floatValue];
                float res = a / b;
                
                
                tempResult = [NSString stringWithFormat:@"%f", res];
                [result replaceObjectAtIndex:valOne withObject:tempResult];
                
                [result removeObjectAtIndex:i];
                
                [result removeObjectAtIndex:i];
                break;
                
            }
        }
        
        for (int i=0; i<[result count];i++) {
            if ([[result objectAtIndex:i] isEqualToString:@"X"]) {
                //your code here
                
                int valOne = i-1;
                int valTwo = i+1;
                
               float a = [[result objectAtIndex:valOne] floatValue];
               float b = [[result objectAtIndex:valTwo] floatValue];
                float res = a * b;
                
                
                tempResult = [NSString stringWithFormat:@"%f", res];
                [result replaceObjectAtIndex:valOne withObject:tempResult];
                
                [result removeObjectAtIndex:i];
                
               [result removeObjectAtIndex:i];
                break;
                
            }
            
        }
        
        

        
        for (int i=0; i<[result count];i++) {
        
           if ([[result objectAtIndex:i] isEqualToString:@"+"]) {
               //your code here
               
               int valOne = i-1;
               int valTwo = i+1;
               
             float  a = [[result objectAtIndex:valOne] floatValue];
             float  b = [[result objectAtIndex:valTwo] floatValue];
               float res = a + b;
               
               
               tempResult = [NSString stringWithFormat:@"%f", res];
               [result replaceObjectAtIndex:valOne withObject:tempResult];
               
               [result removeObjectAtIndex:i];
               
               [result removeObjectAtIndex:i];
               break;
               
           }
        }
        
        for (int i=0; i<[result count];i++) {
           if ([[result objectAtIndex:i] isEqualToString:@"-"]) {
               //your code here
               
               int valOne = i-1;
               int valTwo = i+1;
               
             float  a = [[result objectAtIndex:valOne] floatValue];
             float  b = [[result objectAtIndex:valTwo] floatValue];
               float res = a - b;
               
               
               tempResult = [NSString stringWithFormat:@"%f", res];
               [result replaceObjectAtIndex:valOne withObject:tempResult];
               
               [result removeObjectAtIndex:i];
               
               [result removeObjectAtIndex:i];
               break;
               
           }
        }
        
        }
        
    
    
    //tempResult = [tempResult appendString:[NSString stringWithFormat:@"%@", [result objectAtIndex:0]]];
    
   // self.display.text = myArray;
    
   // NSLog(@"%@",result[0]);
    
    [self performSegueWithIdentifier:@"ResultView" sender:sender];

    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"ResultView"]) {
        SecondViewController *destViewController = segue.destinationViewController;
        destViewController.str = [result objectAtIndex:0];
    }
}

- (IBAction)btnPlus:(id)sender {
    
    [result addObject:@"+"];
    resultString = [resultString stringByAppendingString:@"+"];
    
    self.display.text = resultString;
}

- (IBAction)btnMinus:(id)sender {
    
    [result addObject:@"-"];
    resultString = [resultString stringByAppendingString:@"-"];
    
    self.display.text = resultString;
}

- (IBAction)btnMultiple:(id)sender {
    
    [result addObject:@"X"];
    resultString = [resultString stringByAppendingString:@"x"];
    
    self.display.text = resultString;
}

- (IBAction)btnOne:(id)sender {
    
    [result addObject:@"1"];
    resultString = [resultString stringByAppendingString:@"1"];
    
    self.display.text = resultString;
    
}

- (IBAction)btnTwo:(id)sender {
    [result addObject:@"2"];
    resultString = [resultString stringByAppendingString:@"2"];
    
    self.display.text = resultString;
}

- (IBAction)btnThree:(id)sender {
    [result addObject:@"3"];
    resultString = [resultString stringByAppendingString:@"3"];
    
    self.display.text = resultString;
}

- (IBAction)btnFour:(id)sender {
    
    [result addObject:@"4"];
    resultString = [resultString stringByAppendingString:@"4"];
    
    self.display.text = resultString;
}

- (IBAction)btnFive:(id)sender {
    
    [result addObject:@"5"];
    resultString = [resultString stringByAppendingString:@"5"];
    
    self.display.text = resultString;
}

- (IBAction)btnSix:(id)sender {
    
    [result addObject:@"6"];
    resultString = [resultString stringByAppendingString:@"6"];
    
    self.display.text = resultString;
}

- (IBAction)btnSeven:(id)sender {
    
    [result addObject:@"7"];
    resultString = [resultString stringByAppendingString:@"7"];
    
    self.display.text = resultString;
}

- (IBAction)btnEight:(id)sender {
    
    [result addObject:@"8"];
    resultString = [resultString stringByAppendingString:@"8"];
    
    self.display.text = resultString;
}

- (IBAction)btnNine:(id)sender {
    
    [result addObject:@"9"];
    resultString = [resultString stringByAppendingString:@"9"];
    
    self.display.text = resultString;
}

- (IBAction)btnMode:(id)sender {
    
    [result addObject:@"%"];
    resultString = [resultString stringByAppendingString:@"%"];
    
    self.display.text = resultString;
}

- (IBAction)btnZero:(id)sender {
    
    [result addObject:@"0"];
    resultString = [resultString stringByAppendingString:@"0"];
    
    self.display.text = resultString;
}

- (IBAction)btnDivid:(id)sender {
    
    [result addObject:@"/"];
    resultString = [resultString stringByAppendingString:@"/"];
    
    self.display.text = resultString;
}
@end
