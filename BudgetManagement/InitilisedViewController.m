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
    
    self.dataTabel.delegate = self;
    self.dataTabel.dataSource = self;
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    //NSLog(@" %ld", data.IncomeAmountArray.count);
    

   // a primary way of calculating the sum of integers or floats in array:
    float totalIncome=0;
    for (int c=0; c<(data.IncomeAmountArray.count); c++) {
        
        totalIncome = totalIncome + [data.IncomeAmountArray[c] floatValue];
        
    }
    data.TotalIncome = totalIncome;
    //NSLog(@"Total income %.3f = ",data.TotalIncome);
    
    float totalExpence = 0;
    for (int c=0; c<(data.ExpenceAmountArray.count); c++) {
        
        totalExpence = totalExpence + [data.ExpenceAmountArray[c] floatValue];
        
    }
    data.TotalExpence= totalExpence;
    //NSLog(@"Total expence  = %.3f  ",data.TotalExpence);
    
    data.NetBalance = data.TotalIncome - data.TotalExpence;
    //NSLog(@"Net balance is %.3f", data.NetBalance);
    
    //To test passing data correctrly between the views:
    //NSLog(@"shared income rows = %ld", data.IncomeSourcesArray.count);
    //NSLog(@"Shared expence rows = %ld", data.ExpenceSourcesArray.count);
    
    // To check if the income sources array is correcly sent to thie view:
  
    //NSLog(@"first element in amount array is %@ at index: %u", data.IncomeAmountArray[0], 0);
     //NSLog(@"last element in amount array is %@ at index: %ld", data.IncomeAmountArray[(data.i)-1], data.i-1); //basically last elemnt is at index = data.i -1 because after we pressed button for the last time data.i increased by 1
    
    //NSLog(@"Current element in array is: %@ at index %d", data.IncomeSourcesArray[1], 1);
    
    //NSLog(@"Size of the array is %ld", [data.IncomeSourcesArray count]); got it right
   // NSLog(@"Current element in array is: %@ at index %d", data.IncomeSourcesArray[2], 2);
    
    

    /*
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *sharedIncomeText = [defaults objectForKey:@"incomeText"];
    self.testLabel.text = sharedIncomeText;
     */
    
    //FillTableViewController *object = [[FillTableViewController alloc]init];
    

    
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
    
    
    return 5; //Income sources,total income amount, outcome sources, total outcome sources And net balance.
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section {

    NSString *sectionHeader;
    SharedDataClass *data = [SharedDataClass SharedData];
    
    if (section == 0) {
        sectionHeader = @"Income sources:";
    }
    
    if (section == 1) {
        sectionHeader = [NSString stringWithFormat:@"Total income = %.3f (%@)", data.TotalIncome, data.SharedCurrency];
    }
    if (section == 2) {
        sectionHeader = @"Outlays section:";
    }
    if (section == 3) {
        sectionHeader = [NSString stringWithFormat:@"Total outlay = %.3f (%@)", data.TotalExpence, data.SharedCurrency];
    }
    if (section == 4) {
        
        SharedDataClass *data = [SharedDataClass SharedData];
        sectionHeader = [NSString stringWithFormat:@"Net balance = %.3f", data.NetBalance];
        
    }
    
    return sectionHeader;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    SharedDataClass *data = [SharedDataClass SharedData];
    
    NSInteger NumberOfRowsInSection =0; //give it an initial value
   
    
    if (section == 0) { //income sources

       NumberOfRowsInSection =data.IncomeSourcesArray.count; //last row for total income amount
        
        //NSLog(@"number of rows in sectio 0 = %ld", NumberOfRowsInSection);
    }
    
    if (section == 2) { //outlays
        
        NumberOfRowsInSection = data.ExpenceSourcesArray.count; //no error

    }
    
    //other sections need only the section header (no rows), so their NumberOfRowsInSection = 0 (initalised given value at start of method)
    
    return NumberOfRowsInSection;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellText" forIndexPath:indexPath];
    
   
    SharedDataClass *data = [SharedDataClass SharedData];
    
    if (indexPath.section == 0 ) {
        
       // NSLog(@"last element in amount array is %@ at index: %ld", data.IncomeAmountArray[(data.i)-1], data.i-1);
        
        cell.textLabel.text = data.IncomeSourcesArray [indexPath.row];
        
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@" %.2f ( %@ )", [data.IncomeAmountArray[indexPath.row] floatValue], data.SharedCurrency];
    }
    

    if (indexPath.section == 2) {
        
        cell.textLabel.text = data.ExpenceSourcesArray [indexPath.row];
        
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@" %.2f (%@)", [data.ExpenceAmountArray[indexPath.row] floatValue],data.SharedCurrency];
    }
    
//NSLog(@"section %ld, row %ld " , indexPath.section, indexPath.row);
/*
cell.textLabel.text = @"Here is the Cell";
 cell.detailTextLabel.text = @"Here are the details text";
 */
return cell;

}




//Not sure about this method yet
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
     return YES;
}



- (IBAction)saveDataButton:(UIButton *)sender {
}

- (IBAction)clearDataButton:(UIButton *)sender {
    
    //If this button is presses, clear all the saved data. Other local data are not shared between views (their values returned to its initial value everytime
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    data.SharedIncomeFloat = 0;
    data.SharedIncomeObject = 0; // recall; it`s an NSNumber
   
    data.SharedExpenceFloat = 0;
    data.SharedExpenceObject = 0;
   
    data.SharedIncomeText = nil;
    data.SharedExpenceText = nil;
    data.SharedCurrency = nil;
    
    //Reinitalise arrays
    data.IncomeSourcesArray = [NSMutableArray array];
    data.IncomeAmountArray = [NSMutableArray array];
    data.ExpenceSourcesArray = [NSMutableArray array];
    data.ExpenceAmountArray = [NSMutableArray array];
    
    data.TotalIncome = 0;
    data.TotalExpence = 0;
    data.NetBalance = 0;
    
    data.i = 0;
    data.u = 0;
    
    data.NumberOfIncomeRows=0;
    data.NumberOfExpenceRows = 0;
    
    [self.dataTabel reloadData];
}

@end
