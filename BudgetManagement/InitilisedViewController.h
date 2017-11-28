//
//  InitilisedViewController.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/10/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"

@interface InitilisedViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *halooLabel;

@property (weak, nonatomic) IBOutlet UITableView *dataTabel;



@end

//perfect; so the data source and delegate methods will be added in the implementaion of this class; because I already got a yellow warning message about some missed methods and when I pressed fix; the numberOfRowsInsSection and ... appeared.
