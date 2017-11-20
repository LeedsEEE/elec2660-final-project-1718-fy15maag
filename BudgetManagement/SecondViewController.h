//
//  SecondViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 2/28/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *UserNameField; //This might be changed later as an action to be used for saved sheets. This will be changed to : type the currency

@property (weak, nonatomic) IBOutlet UILabel *NumberIncomeLabel; // Tell user to select nummber of income sources (eg. salary, investment income >> #income = 2 ).

@property (weak, nonatomic) IBOutlet UIPickerView *NumberIncomePicker; // Maximum income sources = 12 (arbitrary chosen).

@property (weak, nonatomic) IBOutlet UILabel *NumberExpensesLabel; // eg: school fees, loans, taxes. >> #expenses = 3;

@property (weak, nonatomic) IBOutlet UIPickerView *NumberExpensesPicker; //Maximum of 25.

- (IBAction)InitiliseTableButton:(UIButton *)sender; // This button takes to a new table view, where number of sections = 3 (Income sources, expenses sources, net balance). Number of rows in each section varies based on user chosen of number of income/expenses sources. Number of coloumns = 3 ( Income/expense souce , amount, percentage). 






@end
