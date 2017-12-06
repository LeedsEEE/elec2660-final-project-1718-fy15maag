//
//  InitilisedViewController.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/10/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "InitilisedViewController.h"

@interface InitilisedViewController ()

@end

@implementation InitilisedViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.enterMonthYearLabel.text = @"Enter Month / Year";
    
                           
    self.dataTabel.delegate = self;
    self.dataTabel.dataSource = self;
    
    //To test passing data correctrly between the views:
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    NSLog(@"shared income rows = %ld", data.NumberOfIncomeRows);
    NSLog(@"Shared expence rows = %ld", data.NumberOfExpenceRows);
    
    NSLog(@"last shared text is: %@", data.SharedIncomeText);
    //data.IncomeSourcesArray = [NSMutableArray array];
   // NSLog(@"First element in the IncomeSourcesArray is %@", data.IncomeSourcesArray[0]);
   
    /*
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *sharedIncomeText = [defaults objectForKey:@"incomeText"];
    self.testLabel.text = sharedIncomeText;
     */
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 3; //Income,outcome sources. And net balance
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *sectionHeader;
    
    if (section == 0) {
        sectionHeader = @"Income sources";
    }
    if (section == 1) {
        sectionHeader = @"Outcome Sources";
    }
    if (section == 2) {
        //sectionHeader = [NSString stringWithFormat:@"Net balance = %ld", calculation.netBalance; calculation will be an object for a NSObject class "Calculations" netBalance will be integer in Calculations that is calculated using a method called getCalculations which will calculate net balacnce and percentages.
        sectionHeader = @"Net balance = ";
    }
    return sectionHeader;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    SharedDataClass *data = [SharedDataClass SharedData];
    
    NSInteger *NumberOfRowsInSection =0; //give it an initial value
    
    if (section == 0) {
        
        NumberOfRowsInSection = data.NumberOfIncomeRows;
    }
    
    if (section == 1) {
        
        NumberOfRowsInSection = data.NumberOfExpenceRows;
    }
    
    return NumberOfRowsInSection;
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellText" forIndexPath:indexPath]; //I might create this cell in the heaser and here say sel.cell = [tableView deq.....];
    
    
    cell.textLabel.text = @"Here is the Cell";
    cell.detailTextLabel.text = @"Here are the details text";
    
    return cell;
    
}

//Not sure about this method yet
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
     return YES;
}



@end
