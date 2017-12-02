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
    
    UITableView *tableView = [[UITableView alloc]init];
    self.dataTabel = tableView;
    
    // just keep these two, same as for picker views in the implementaion of "FourBandViewController"
    
    self.dataTabel.delegate = self;
    self.dataTabel.dataSource = self;
    
    
    //Just for debugging now
    SecondViewController *AccessPickers = [[SecondViewController alloc]init];
    
    //self.enterMonthYearLabel.text = [NSString stringWithFormat:@": %ld ", (long)AccessPickers.TableNumberOfRows];

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
    
    return 2;
}

- (NSString *) tableView:(UITableView *) tableView titleForHeaderInSection:(NSInteger)section {
    
    NSString *sectionHeader;
    
    if (section == 0) {
        sectionHeader = @"Income sources";
    }
    else if (section == 1) {
        sectionHeader = @"Outcome Sources";
    }
    
    return sectionHeader;
}



- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"cellText" forIndexPath:indexPath];
    
    
    cell.textLabel.text = @"Here is the Cell";
    cell.detailTextLabel.text = @"Here are the details text";
    
    return cell;
    
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger NumberOfRowsInSection = 0;
    
    if (section == 0) {
    
    //SecondViewController *AccessPickers = [[SecondViewController alloc]init];
        
    //NumberOfRowsInSection = AccessPickers.TableNumberOfRows;
        
        NumberOfRowsInSection = 3;
    }
    if (section == 1) {
        NumberOfRowsInSection = 2;
    }
    
    return NumberOfRowsInSection;
}



@end
