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
    
    self.NumberIncomeLabel.text = @"Select number of income sources";
    self.NumberExpensesLabel.text = @"Select number of expenses sources";
    
  /*
   In viewDidLoad, we create a shared instance of our data class
   MyDataClass *data = [MyDataClass sharedInstance];
   */
    
   // SharedDataClass *data = [SharedDataClass sharedData];
   // self.data = [[SharedDataClass alloc]init];
    
    
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
        //numberOfRows = integersArray.count;
    }
    
    return numberOfRows;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    NSString *returnedInteger;
    
    if (pickerView == self.NumberIncomePicker) {
        
        if (component == 0) {
            returnedInteger = [NSString stringWithFormat: @"%u",row+1];
        }
    }
    
    if (pickerView == self.NumberExpensesPicker) {
        if (component == 0) {
            returnedInteger = [NSString stringWithFormat: @"%u", row+1];
        }
    }
    
    return returnedInteger;
}

/*
-(int) SavedPickerValue {
    
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    data.NumberOfRows = [self.NumberIncomePicker selectedRowInComponent:0]+1;
    
    NSLog(@"shared Income rows method= %ld", data.NumberOfRows);
    
    return data.NumberOfRows;
}
*/

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    
    SharedDataClass *data = [SharedDataClass SharedData];
        
    data.NumberOfRows = [self.NumberIncomePicker selectedRowInComponent:0]+1;
        
        NSLog(@"Income rows = %ld ", [_NumberIncomePicker selectedRowInComponent:0]+1);
        
        NSLog(@"shared Income rows method= %ld", data.NumberOfRows);
    
    //[self SavedPickerValue];
    
    if (pickerView == _NumberIncomePicker) {
      
        data.testString = @"khdkd";
        NSLog(@" %@", data.testString);
        
    }
    
    if (pickerView == _NumberExpensesPicker) {
        NSLog(@"expense rows %ld", [_NumberExpensesPicker selectedRowInComponent:0]+1);
    }
    
    
}


- (IBAction)InitiliseTableButton:(UIButton *)sender {
    
    }

    
    /*
-(void) TableNumberRowsMethod:(int)amount {
    
    //self.resistor.firstSignificantFigure = [self.fourBandPicker selectedRowInComponent:0];
    
    self.TableNumberOfRows = [self.NumberIncomePicker selectedRowInComponent:0];
}
 */
    
@end
