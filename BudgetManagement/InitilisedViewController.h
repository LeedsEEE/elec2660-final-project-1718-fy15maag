//
//  InitilisedViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/10/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
#import "SharedDataClass.h"
#import "FillTableViewController.h"


@interface InitilisedViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UIPickerViewDelegate,UIPickerViewAccessibilityDelegate, UIPickerViewDataSource>



@property (weak, nonatomic) IBOutlet UITableView *dataTabel;




/* Not used any more
@property (strong, nonatomic) SecondViewController *accessPickers; // not used any more
@property NSInteger rowsFromPicker;
@property NSInteger NumberOfRowsInSection;
@property NSInteger numberOfRows;
*/

@end


