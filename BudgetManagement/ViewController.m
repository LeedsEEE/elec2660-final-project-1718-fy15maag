//
//  ViewController.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 2/28/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _welcomeText.text = @"Welcome to the budget manager app. In this application you will be able to create your own table .... Press start to implement table. ";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)StartButton:(UIButton *)sender {
}

- (IBAction)CurrencyConvertoButton:(UIButton *)sender {
}

- (IBAction)SavedSheetsButton:(UIButton *)sender {
}
@end
