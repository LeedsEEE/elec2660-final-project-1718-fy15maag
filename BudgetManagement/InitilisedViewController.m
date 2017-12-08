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
    
    
    NSLog(@"shared income rows = %ld", data.IncomeSourcesArray.count);
    NSLog(@"Shared expence rows = %ld", data.ExpenceSourcesArray.count);
    
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
    
    NSLog(@"no error");
    
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
    
    NSInteger NumberOfRowsInSection =0; //give it an initial value
   
    
    if (section == 0) {

       NumberOfRowsInSection =data.IncomeSourcesArray.count; //perfect

        NSLog(@"number of rows in sectio 0 = %ld", NumberOfRowsInSection);
    }
    
    if (section == 1) {
        
        NumberOfRowsInSection = data.ExpenceSourcesArray.count; //no error

    }
    NSLog(@"error here");
    return NumberOfRowsInSection;
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellText" forIndexPath:indexPath];
    
    SharedDataClass *data = [SharedDataClass SharedData];
    
    if (indexPath.section == 0 ) {
        
       // NSLog(@"last element in amount array is %@ at index: %ld", data.IncomeAmountArray[(data.i)-1], data.i-1);
        
        cell.textLabel.text = data.IncomeSourcesArray [indexPath.row];
        
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@" %.2f", [data.IncomeAmountArray[indexPath.row] floatValue]];
    }
    

    if (indexPath.section == 1) {
        
        cell.textLabel.text = data.ExpenceSourcesArray [indexPath.row];
        
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@" %.2f", [data.ExpenceAmountArray[indexPath.row] floatValue]];
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



@end
