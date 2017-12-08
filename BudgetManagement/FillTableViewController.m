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
    
    self.nameTextField.delegate = self;
    self.monthTextField.delegate = self;
    self.yearTextField.delegate = self;
    self.currencyTextField.delegate = self;
    self.incomeText.delegate = self;
    self.incomeAmountText.delegate = self;
    self.expenceText.delegate = self;
    self.expenceAmountText.delegate = self;
    
    //self.typeAmountLabel1.text = [NSString stringWithFormat:@"Enter amount (%@)", self.currencyTextField.text];
    //self.typeAmountLabel2.text = [NSString stringWithFormat:@"Enter amount (%@)", self.currencyTextField.text];
    
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


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)sendButton1:(UIButton *)sender {
    
    //[self.button1Title setTitle:@"Send to the table" forState:(UIControlStateNormal)];
    
    SharedDataClass *data = [SharedDataClass SharedData];

    data.SharedIncomeText = self.incomeText.text;
    
    data.SharedIncomeFloat = [self.incomeAmountText.text floatValue]; //Take a float value from a text in a string format. If the text contain no float the value will be null.
    
    data.SharedIncomeObject = [NSNumber numberWithFloat:(data.SharedIncomeFloat)]; // to be able to add this float into the array it has to be an object. So convert it from float to NSNumber.
    
    data.IncomeSourcesArray[data.i] = data.SharedIncomeText;
    data.IncomeAmountArray[data.i] = data.SharedIncomeObject;
    
    NSLog(@"first element in amount array is %@ at index: %u", data.IncomeAmountArray[0], 0);
   // NSLog(@"last element in amount array is %@ at index: %ld", data.IncomeAmountArray[data.i], data.i);
    self.incomeText.text = nil;
    self.incomeAmountText.text = nil;
    
   

    
    /*For debugging:
     
    float sum = [data.IncomeAmountArray[0] floatValue] +3;
    NSLog(@"sum is %.2f", sum); //to make sure that we can use values in the array as floats later for calculations.
    
     //NSLog(@"Element 1 in amount array is %f at index: %ld", [data.IncomeAmountArray[0] floatValue], 0);
     
    //NSLog(@"data.i %ld", data.i);
    //NSLog(@"Element 1 in typy array is %@ at index: %ld", data.IncomeSourcesArray[0], 0);
    NSLog(@"Element 1 in amount array is %f at index: %ld", [data.IncomeAmountArray[0] floatValue], 0);
    //NSLog(@"current element in the type array is %@ at index: %ld", data.IncomeSourcesArray[data.i], data.i);
    // NSLog(@"Size of the array is %ld", data.IncomeSourcesArray.count);
    */
    /* Migth be used when come to the part where user can save his sheet for later accessing:
    SharedDataClass *data = [SharedDataClass SharedData];
    data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:(data.NumberOfIncomeRows)];
    
    NSString *savedString1 = self.incomeText.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:savedString1 forKey:@"SavedString1"];
    [defaults1 synchronize];
    */
    
    data.i++; // By defaults data.i = 0 at start. This integer acts like index path or  counter; whenever button is pressed this will increase by one and new elemen will be added to array at index = index+1;
}

    
 
- (IBAction)sendButton2:(UIButton *)sender {
    
    SharedDataClass *data = [SharedDataClass SharedData];
    //NSLog (@"data.u %ld", data.u);
    
    data.SharedExpenceText = self.expenceText.text;
    
    
    
    
    data.SharedExpenceFloat = [self.expenceAmountText.text floatValue];
    
    data.SharedExpenceObject = [NSNumber numberWithFloat:(data.SharedExpenceFloat)]; // to be able to add this float into the array it has to be an object. So convert it from float to NSNumber.
    
    data.ExpenceSourcesArray[data.u] = data.SharedExpenceText;
    data.ExpenceAmountArray[data.u] = data.SharedExpenceObject;
    
    self.expenceText.text = nil;
    self.expenceAmountText.text = nil;
    
    
    /* For debugging:
    NSLog(@"First element in typy array is %@ at index: %u", data.ExpenceSourcesArray[0], 0);
    NSLog(@"First element in amount array is %f at index: %u", [data.ExpenceAmountArray[0] floatValue], 0);

    NSLog(@"current element in the type array is %@ at index: %ld", data.ExpenceSourcesArray[data.u], data.u);
    float Float = [data.ExpenceAmountArray[data.u] floatValue] +3;
    NSLog(@"Float = %.2f", Float);
    */
    
    data.u++;
}

- (IBAction)showTableButton:(UIButton *)sender {
}



- (IBAction)backGroundControl:(UIControl *)sender {
    
   NSLog(@"Back ground is pressed");
    
    
    if ([self.incomeText isFirstResponder]) {
        
        [self.incomeText resignFirstResponder];
    }
    
    if ([self.expenceText isFirstResponder]) {
        [self.expenceText resignFirstResponder];
    }
    
    if ([self.incomeAmountText isFirstResponder]) {
        
        [self.incomeAmountText resignFirstResponder];
    }
    
    if ([self.expenceAmountText isFirstResponder]) {
        [self.expenceAmountText resignFirstResponder];
    }
}


@end
