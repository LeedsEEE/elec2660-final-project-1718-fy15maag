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

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView { //Two picker views, with the same number of components (1), but different number of rows.
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    NSInteger numberOfRows = 0;
    
    if (pickerView == self.NumberIncomePicker) {
        numberOfRows = 20; // User is not expected to have more than 20 income sources.
    }
    
    if (pickerView == self.NumberExpensesPicker) {
        numberOfRows = 50;
    }
    
    return numberOfRows;
}

//


- (IBAction)InitiliseTableButton:(UIButton *)sender {
}
@end
