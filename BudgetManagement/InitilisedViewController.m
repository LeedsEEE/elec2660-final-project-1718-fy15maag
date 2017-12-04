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
    
    
    /*
    self.numberOfRows = accessPickers.incomeRows;
    NSLog(@"Current rows = %ld", self.numberOfRows);
    */
    
    /*
    SecondViewController *accessPickers = [[SecondViewController alloc]init];
    [accessPickers SavedPickerValue];
    */
    
    SharedDataClass *data = [SharedDataClass SharedData];
    NSLog(@"shared rows = %ld", data.NumberOfRows);
    
   // NSInteger *testInteger = data.NumberOfRows;
    
  // [accessPickers savedPickerValue];
   
    /*
    UIPickerView *pickerView = [[UIPickerView alloc]init];
    NSInteger *row;
    NSInteger *component;
    
    pickerView = accessPickers.NumberIncomePicker;
    row = [accessPickers.NumberIncomePicker selectedRowInComponent:0] +1;
    component = 0;
     */
    
    //[accessPickers pickerViewdidSelectRowinComponent];
    
   // [accessPickers pickerView:(UIPickerView *) didSelectRow:(NSInteger) inComponent:(NSInteger)];
    
    
    //NSLog(@"ljfdf value %ld", [accessPickers.NumberIncomePicker selectedRowInComponent:0]);
    
    //SecondViewController *accessPickers = [[SecondViewController alloc]init];
    
    //NSLog (@"current number rows = %ld" , self.numberOfRows);
    
    //UITableView *dataTabel = [[UITableView alloc]init]; //I think I dont need this here because I already defined this in the header
    
    //_NumberOfRowsInSection = 1; //just an initial value
   // SecondViewController *AccessPickers = [[SecondViewController alloc]init]; //An object to access data in the SecondViewController (selected number of income/outcome sources from picker)
    
    //self.enterMonthYearLabel.text = [NSString stringWithFormat:@": %ld ", (long)AccessPickers.TableNumberOfRows];
    

    
    //NSLog (@"Income rows = %ld", (long) accessPickers.incomeRows);
    
   // NSLog (@"Testing picker = %ld", (long) for this to be done I need to add another DidSelectedRow here for the testPicker (y2ni b8ol if (pickcerView == self.testPicker) then self.NumberOfRowsInSection = self.incomeRows selectedRowInComponent

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


/*
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    self.pickerView = _accessPickers.NumberIncomePicker; // so I might also delete the one in the header which is named pickerView
    self.numberOfRows = [_pickerView selectedRowInComponent:0];
    
}
 */

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // I think if I have another table View I should add if (tableView == self.dataTable ) { ....} but because it`s the only table I dont need to do this
    
    NSInteger *NumberOfRowsInSection =1;
    
    
    //SecondViewController *AccessPickers = [[SecondViewController alloc]init];
    
    if (section == 0) {
        
        
        NumberOfRowsInSection = 2;
    }
    if (section == 1) {
        
        
        NumberOfRowsInSection = self.rowsFromPicker;
    }
    
    return NumberOfRowsInSection;
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellText" forIndexPath:indexPath];
    
    
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
