//
//  SharedDataClass.h
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/16/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SharedDataClass : NSObject

//This way of creating a class to share data between views is taken from a blog for Dr.Evans:/* https://eencae.wordpress.com/ios-tutorials/other/passing-data-between-multiple-views/ */

//Note: some of the properties here could be defined locally within InitilisedTableView or FillTableView; but they are defined here in case if there is a time to add a feature to save paper statements even after closing the app. And then for data anaylsing (e.g. sketching month vs total expences).


#pragma marks: Main data for this app to be shared between views:


@property NSString *SharedIncomeText; // UITextField.text entered by user and sent to a table view in another view controller.

@property float SharedIncomeFloat; // Entered income amount in a float form to be used in calculations.

@property NSNumber *SharedIncomeObject; // Same as the above float but converted to NSNumber object to allow adding it into array.

@property NSString *SharedExpenceText;
@property float SharedExpenceFloat;
@property NSNumber *SharedExpenceObject;

@property NSString *SharedCurrency; //SharedCurrency = any currency typed into UITextField by user.

//Arrays that will store above data:

@property NSMutableArray *IncomeSourcesArray; //Includes income sources texts ("salaries", "investments",...).

@property NSMutableArray *IncomeAmountArray; //Includes amount of each income source.

@property NSMutableArray *ExpenceSourcesArray; // Expence texts are to be added here ("school fees", "taxes" ...)

@property NSMutableArray *ExpenceAmountArray; //Amount of each expence.

@property float TotalIncome; // Sum of each individual income amount (sum of floats in IncomeSourcesArray).

@property float TotalExpence; // Sum of each individual expence amount (sum of floats in ExpenceAmountArray).

@property float NetBalance; // which is = TotalIncome - TotalExpence.



//The below inteegers (i,u) are defined in such a class to be used as counters or index path inside IBActions. Where if a button is pressed we want to add a new object into the array at new index, and keep this value unchanged even if we moved to another view. Check FillTableViewController class to see how these two integers are used within IBAction.
@property NSInteger i;
@property NSInteger u;

#pragma marks: number of rows for a section in the table view
//Number of rows is a variable to be shared between different views. It will be equal to size of array that is filled by user whenever he add a text into UITextFields.
//Previousely; nubmer of rows was to be indicated at the start from pickers in the SecondViewController , then passed to the InitilisedViewController. But then it`s found that it`s more practical to just say: number of rwos = size of array.
@property NSInteger *NumberOfIncomeRows;
@property NSInteger *NumberOfExpenceRows;
//^^Could be defined just locally (within InitilisedTableView)







+ (SharedDataClass *) SharedData; //A class method


@end
