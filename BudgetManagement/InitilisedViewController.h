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


@interface InitilisedViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate, UIPickerViewDelegate,UIPickerViewAccessibilityDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField; // I might need this and the other two text fields as actions not outlet because they will be used when saving sheets.
@property (weak, nonatomic) IBOutlet UITextField *monthTextField;
@property (weak, nonatomic) IBOutlet UITextField *yearTextField;
@property (weak, nonatomic) IBOutlet UILabel *enterMonthYearLabel;


@property (weak, nonatomic) IBOutlet UITableView *dataTabel; //until now I`m not using this. No I`m absolutely using it!

//@property (strong, nonatomic) SecondViewController *accessPickers;
//@property NSInteger NumberOfRowsInSection;


@property NSInteger numberOfRows;
@property NSInteger rowsFromPicker;

@end

//perfect; so the data source and delegate methods will be added in the implementaion of this class; because I already got a yellow warning message about some missed methods and when I pressed fix; the numberOfRowsInsSection and ... appeared.
