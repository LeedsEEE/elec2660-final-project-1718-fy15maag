//
//  FillTableViewController.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/14/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "FillTableViewController.h"

@interface FillTableViewController ()

@end

@implementation FillTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.incomeText.delegate = self;
    self.expenceText.delegate = self;
    
    
    
    //Debugging commands
    SharedDataClass *data = [SharedDataClass SharedData];
    //NSLog(@"Number of income rows %ld", data.NumberOfIncomeRows);
    //NSLog(@"Number of expence rows %ld", data.NumberOfExpenceRows);
    /*
    if (self.testButton.touchInside) {
        NSLog(@"test button is pressed");
    }
    */
    
    //data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:(20)];
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

/*
-(void)loopMethod {
    
    SharedDataClass *data = [SharedDataClass SharedData];
    data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:(data.NumberOfIncomeRows)];
    
    for (NSInteger i=0; i<=data.NumberOfIncomeRows; i++) {
        
        [data.IncomeSourcesArray[i] addObject:self.incomeText.text];
        
        
        self.incomeText.text = nil;
    }
    
    NSLog(@"First element in the array is %@", data.IncomeSourcesArray[0]);
    

}
*/

/*
 Inside the sendButton method:
 
 */

-(void) loopMethod {
    /*
    NSInteger i=0;
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    data.IncomeSourcesArray = [NSMutableArray array];
    sizeof(data.IncomeSourcesArray) == data.NumberOfIncomeRows;
    
    for (i=0; i<=data.NumberOfIncomeRows; i++){
        
        //if ([self sendButton1:sendButton1]) {
        if (self.testButton.touchInside) {
            
            data.IncomeSourcesArray[i] = self.incomeText.text;
            self.incomeText.text = nil;
            NSLog(@"First input text is %@", data.IncomeSourcesArray[0]);
            NSLog(@"Current element is %@ at index %ld", data.IncomeSourcesArray[i], i);
        }
        }
*/
}



- (IBAction)sendButton1:(UIButton *)sender {
    
    /*
    SharedDataClass *data = [SharedDataClass SharedData];
    data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:(data.NumberOfIncomeRows)];
    
    NSString *savedString1 = self.incomeText.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:savedString1 forKey:@"SavedString1"];
    [defaults1 synchronize];
    */
    
    
}







- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}
    
 
- (IBAction)sendButton2:(UIButton *)sender {
}

- (IBAction)showTableButton:(UIButton *)sender {
}

- (IBAction)backGroundControl:(UIControl *)sender {
    
    SharedDataClass *data = [SharedDataClass SharedData];
  
    data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:20];
    
    /*
    for (data.i; data.i <= data.NumberOfIncomeRows;) {
        data.IncomeSourcesArray [data.i-1] = data.SharedIncomeText;
    }
  */

    //izeof(data.IncomeSourcesArray) == data.NumberOfIncomeRows;
    
    //NSLog(@"initial index = %ld" ,data.i);

    
    if ([self.incomeText isFirstResponder]) { //I think if incomeText is being used and bacground is pressed then:
        [self.incomeText resignFirstResponder]; // resignResponder >> incomeText is not the one being used so remove Keyboard
    }
    if ([self.expenceText isFirstResponder]) {
        [self.expenceText resignFirstResponder];
    }
    
    //data.SharedIncomeText = self.incomeText.text;
    //NSLog(@"SharedIncomeText is %@", data.SharedIncomeText);
    
    
    
    if (self.testButton.touchInside) { // testButton is an IBOUtlet UIButton for this class
        
        /*
        NSString *sharedIncomeText = self.incomeText.text;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        [defaults setObject:sharedIncomeText forKey:@"incomeText"];
        [defaults synchronize];
        self.incomeText.text = nil;
        
        */

       data.SharedIncomeText = self.incomeText.text; // SharedIncomeText is NSString in the SharedDataClass. And  incomeText is UITextFiedl for this class.
        
        
        NSLog(@"Test button is pressed");
        NSLog(@"data.i = %ld",data.i); // i is NSInteger, anf it will be used here as an index (counter)
        NSLog(@"data.sharedIncomeText is %@", data.SharedIncomeText);
       // [data.IncomeSourcesArray[data.i] addObject:data.SharedIncomeText]; //object for the array at an index path = data.i (which is 0 at first) is the last typed text in the text field
        [data.IncomeSourcesArray addObject:data.SharedIncomeText];
        self.incomeText.text = nil;
        data.i++; //Every time button is pressed; increase i by one so the index of row in array change.
        NSLog(@"First elemnt in the array %@", data.IncomeSourcesArray[0]);
        
        
    }
    
    NSLog(@" data.i now = %ld", data.i);
    NSLog(@"Back ground is pressed");
   
}
@end
