//
//  FillTableViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/14/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SharedDataClass.h"
#import "SecondViewController.h"

@interface FillTableViewController : UIViewController <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UILabel *typeIncomeLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeAmountLabel1;

@property (weak, nonatomic) IBOutlet UILabel *typeExpenceLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeAmountLabel2;

- (IBAction)sendButton1:(UIButton *)sender;
//@property (weak, nonatomic) IBOutlet UIButton *button1Title;

- (IBAction)sendButton2:(UIButton *)sender;
- (IBAction)showTableButton:(UIButton *)sender;


@property (weak, nonatomic) IBOutlet UITextField *incomeText;
@property (weak, nonatomic) IBOutlet UITextField *incomeAmountText;

@property (weak, nonatomic) IBOutlet UITextField *expenceText;
@property (weak, nonatomic) IBOutlet UITextField *expenceAmountText;


- (IBAction)backGroundControl:(UIControl *)sender;

@property(nonatomic) UIKeyboardAppearance keyboardAppearance; //This property lets you distinguish between the default text entry inside your application and text entry inside an alert panel. The default value for this property is UIKeyboardAppearanceDefault.

@property (weak, nonatomic) IBOutlet UIButton *testButton;



//@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (strong, nonatomic) FillTableViewController *object; //Not sure if I really need it

@end
