//
//  ViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 2/28/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)StartButton:(UIButton *)sender;
- (IBAction)CurrencyConvertoButton:(UIButton *)sender;
- (IBAction)SavedSheetsButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextView *welcomeText;

@end

