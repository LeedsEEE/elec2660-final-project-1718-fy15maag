//
//  SecondViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 2/28/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SharedDataClass.h"
#import "InitilisedViewController.h"

@interface SecondViewController : UIViewController <UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate,UITableViewDataSource, UITabBarDelegate >

@property (weak, nonatomic) IBOutlet UITextField *CurrencyTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *monthTextField;

@property (weak, nonatomic) IBOutlet UITextField *yearTextField;


@property (weak, nonatomic) IBOutlet UILabel *NumberIncomeLabel; // Tell user to select nummber of income sources (eg. salary, investment income >> #income = 2 ).

@property (weak, nonatomic) IBOutlet UIPickerView *NumberIncomePicker; // Maximum income sources = 20 (arbitrary chosen).

@property (weak, nonatomic) IBOutlet UILabel *NumberExpensesLabel; // eg: school fees, loans, taxes. >> #expenses = 3;

@property (weak, nonatomic) IBOutlet UIPickerView *NumberExpensesPicker; //Maximum of 50.

- (IBAction)InitiliseTableButton:(UIButton *)sender; // This button takes to a new table view, where number of sections = 3 (Income sources, expenses sources, net balance). Number of rows in each section = numberIncomePicker (or numberIncomeExpenses) + 1 . Where additional one is for total income or expenses.



@end
