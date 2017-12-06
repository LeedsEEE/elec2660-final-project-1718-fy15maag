//
//  SharedDataClass.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/16/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedDataClass : NSObject

@property NSInteger *NumberOfRows; //Number of rows is a variable to be shared between different views. It will be chosen from pickers in the SecondViewController , then passed to the InitilisedViewController to indicate number of rows of table.

@property NSInteger *NumberOfIncomeRows;
@property NSInteger *NumberOfExpenceRows;

@property NSInteger i;
@property NSString *SharedIncomeText; //to be shared between FillTableViewContoller and InitilisedTableViewController


@property NSMutableArray *IncomeSourcesArray; //In this array; the income sources texts ("fees", "loans",...) will be added to.

+ (SharedDataClass *) SharedData; //A class method


@end
