//
//  InitilisedTableView.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/4/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewSettings.h"



@interface InitilisedTableView : UIViewController <UITableViewDataSource, UITableViewDelegate>

// @property (strong, nonatomic) TableViewSettings *tableView;

//@property (strong, nonatomic) UITableView *vieww;
@property (strong, nonatomic) UITableView *tableView;


@property(class, nonatomic, readonly) UIScreen *mainScreen;
@property(nonatomic, readonly) CGRect bounds;

@property (weak, nonatomic) IBOutlet UILabel *testingLabel;



@end
