//
//  SharedDataClass.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/16/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedDataClass : NSObject


//Number of rows is a variable to be shared between different views. It will be chosen from pickers in the SecondViewController , then passed to the InitilisedViewController to indicate number of rows for a section in the table.
@property NSInteger *NumberOfIncomeRows;
@property NSInteger *NumberOfExpenceRows;

@property NSInteger i; //will be used as a counter or index inside IBActions, where if the buttom is pressed we want to keep this value unchanged even if we changed the view.
@property NSInteger u; //Another counter

//to be = UITextFilds.text in the FillTableView. And then shared between FillTableViewContoller and InitilisedTableViewController
@property NSString *SharedIncomeText;
@property float SharedIncomeFloat; // Income amount in a float form to be used in calculations
@property NSNumber *SharedIncomeObject; // Above float but converted to NSNumber object to allow adding it into array.

@property NSString *SharedExpenceText;
@property float SharedExpenceFloat;
@property NSNumber *SharedExpenceObject;

@property NSMutableArray *IncomeSourcesArray; //In this array; the income sources texts ("salaries", "investments",...) will be added to.

@property NSMutableArray *IncomeAmountArray; //In this array; amount of each income source is added (floats).

@property NSMutableArray *ExpenceSourcesArray; // Expence type is to be added here ("school fees", "taxes" ...)
@property NSMutableArray *ExpenceAmountArray; //Amount 

+ (SharedDataClass *) SharedData; //A class method


@end
