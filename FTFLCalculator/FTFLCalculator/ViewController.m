//
//  ViewController.m
//  FTFLCalculator
//
//  Created by LICT 2 on 2/28/15.
//  Copyright (c) 2015 LICT 2. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arrmFilter=[[NSMutableArray alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button1:(id)sender {
    
    display.text=[NSString stringWithFormat:@"%@1",display.text];
     [arrmFilter addObject:@"1"];

}




- (IBAction)button2:(id)sender {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
    [arrmFilter addObject:@"2"];
    
}

- (IBAction)button3:(id)sender {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
     [arrmFilter addObject:@"3"];
}

- (IBAction)button4:(id)sender {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
     [arrmFilter addObject:@"4"];
}

- (IBAction)button5:(id)sender {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
     [arrmFilter addObject:@"5"];
}

- (IBAction)button6:(id)sender {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
     [arrmFilter addObject:@"6"];
}

- (IBAction)button7:(id)sender {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
     [arrmFilter addObject:@"7"];
}

- (IBAction)button8:(id)sender {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
     [arrmFilter addObject:@"8"];
}

- (IBAction)button9:(id)sender {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
     [arrmFilter addObject:@"9"];
}

- (IBAction)button0:(id)sender {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
     [arrmFilter addObject:@"0"];
}

- (IBAction)buttonPlus:(id)sender {
    
    operation = Plus;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"%@+",display.text];
     [arrmFilter addObject:@"+"];

}

- (IBAction)buttonMinus:(id)sender {
    operation = Minus;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"%@-",display.text];
     [arrmFilter addObject:@"-"];

}

- (IBAction)buttonMultiply:(id)sender {
    operation = Multiply;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"%@*",display.text];
     [arrmFilter addObject:@"*"];

}

- (IBAction)buttonDivition:(id)sender {
    operation = Divide;
    storage = display.text;
    display.text=[NSString stringWithFormat:@"%@/",display.text];
    [arrmFilter addObject:@"/"];

}



- (IBAction)buttonResult:(id)sender {
    
 
    
   NSLog(@"array: %@", arrmFilter);
    
  
    
    int totalSum = 0;
    
   
    
    for(int i = 0 ; i < arrmFilter.count; i++) {
        
        if([[arrmFilter objectAtIndex:i] isEqualToString:@"/"]){
            
            
            totalSum  = [[arrmFilter objectAtIndex:i-1] intValue] / [[arrmFilter objectAtIndex:i+1] intValue] ;
            
            NSNumber* xWrapped = [NSNumber numberWithInt:totalSum];
            
            [arrmFilter replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%@",xWrapped]];
            
            [arrmFilter removeObjectAtIndex:i];
            [arrmFilter removeObjectAtIndex:i];
            NSLog(@"array: %@", arrmFilter);

            break;
           
        }
    }
    
    
    for(int i = 0 ; i < [arrmFilter count]; i++) {
        
        if([[arrmFilter objectAtIndex:i] isEqualToString:@"*"]){
            
            
            totalSum  = [[arrmFilter objectAtIndex:i-1] intValue] * [[arrmFilter objectAtIndex:i+1] intValue] ;
            
            NSNumber* xWrapped = [NSNumber numberWithInt:totalSum];
            
            [arrmFilter replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%@",xWrapped]];
            [arrmFilter removeObjectAtIndex:i];
            [arrmFilter removeObjectAtIndex:i];
            break;
           
        }
    }
    
    
    for(int i = 0 ; i < arrmFilter.count; i++) {
        
        if([[arrmFilter objectAtIndex:i] isEqualToString:@"+"]){
            
            
            totalSum  = [[arrmFilter objectAtIndex:i-1] intValue] + [[arrmFilter objectAtIndex:i+1] intValue] ;
            
            NSNumber* xWrapped = [NSNumber numberWithInt:totalSum];
            
            [arrmFilter replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%@",xWrapped]];
            [arrmFilter removeObjectAtIndex:i];
            [arrmFilter removeObjectAtIndex:i];
            NSLog(@"array: %@", arrmFilter);

            break;
            
        }
    }
    
    
    for(int i = 0 ; i < arrmFilter.count; i++) {
        
        if([[arrmFilter objectAtIndex:i] isEqualToString:@"-"]){
            
            
            totalSum  = [[arrmFilter objectAtIndex:i-1] intValue] -[[arrmFilter objectAtIndex:i+1] intValue] ;
            
            NSNumber* xWrapped = [NSNumber numberWithInt:totalSum];
            
            [arrmFilter replaceObjectAtIndex:i-1 withObject:[NSString stringWithFormat:@"%@",xWrapped]];
            [arrmFilter removeObjectAtIndex:i];
            [arrmFilter removeObjectAtIndex:i];
            break;
            
        }
    }

    
        display.text = [NSString stringWithFormat:@"%d",totalSum];

//        NSLog(@"totalSum: %i", totalSum);
    [self performSegueWithIdentifier:@"SecondView" sender:sender];
    }
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"SecondView"]){
        SecondViewController *destViewControler =segue.destinationViewController;
        destViewControler.str= display.text;
    }
        }


@end
