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



- (IBAction)sendButton1:(UIButton *)sender {
    
    SharedDataClass *data = [SharedDataClass SharedData];
   // data.IncomeSourcesArray = [NSMutableArray arrayWithCapacity:20];
    
    //data.IncomeSourcesArray = [NSMutableArray array];
    
    data.SharedIncomeText = self.incomeText.text;
    NSLog(@"data.i %ld", data.i);
    data.IncomeSourcesArray[data.i] = data.SharedIncomeText;
    
    //[data.IncomeSourcesArray addObject:data.SharedIncomeText];
    
    NSLog(@"data.i %ld", data.i);
   
    NSLog(@"Firs element in the array is %@ at index: %ld", data.IncomeSourcesArray[0], 0);
    NSLog(@"current element in the array is %@ at index: %ld", data.IncomeSourcesArray[data.i], data.i);
    
    self.incomeText.text = nil;
    
    data.i++;
    
    
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
    
   NSLog(@"Back ground is pressed");
}


@end
