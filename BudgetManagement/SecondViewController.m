//
//  SecondViewController.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 2/28/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.NumberIncomePicker.dataSource = self;
    self.NumberIncomePicker.delegate = self;
    self.NumberExpensesPicker.dataSource = self;
    self.NumberExpensesPicker.delegate = self;
     
    
    
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

#pragma mark Piker Views Data source methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView { //Note we have two picker Views, but in both of them, number of components is the same. The difference will be in the number of rows
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger numberOfRows;
    
    if (pickerView == self.NumberIncomePicker) {
        numberOfRows = 15; //This is subjected to change.
    }
    
    if (pickerView == self.NumberExpensesPicker) {
        numberOfRows = 50; //This is subjected to change too.
    }
    
    return numberOfRows;
}

#pragma mark Picker Views Delegate methods

//For now I just want to make sure taht the provided number of rows for each picker is correct, so I`m going to give number rows from 0 to i (where i = number of rows - 1). Actually I did count them and they are correct.



- (IBAction)InitiliseTableButton:(UIButton *)sender {
}
@end
