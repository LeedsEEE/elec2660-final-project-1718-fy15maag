//
//  SharedDataClass.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/16/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "SharedDataClass.h"

@implementation SharedDataClass


@synthesize NumberOfIncomeRows = _NumberOfIncomeRows;
@synthesize NumberOfExpenceRows = _NumberOfExpenceRows;

@synthesize IncomeSourcesArray = _IncomeSourcesArray;
@synthesize IncomeAmountArray = _IncomeAmountArray;
@synthesize ExpenceSourcesArray = _ExpenceSourcesArray;
@synthesize ExpenceAmountArray = _ExpenceAmountArray;

@synthesize i = _i;
@synthesize u = _u;

@synthesize SharedIncomeText = _SharedIncomeText;
@synthesize SharedIncomeFloat = _SharedIncomeFloat;
@synthesize SharedIncomeObject = _SharedIncomeObject;
@synthesize SharedExpenceText = _SharedExpenceText;
@synthesize SharedExpenceFloat = _SharedExpenceFloat;
@synthesize SharedExpenceObject = _SharedExpenceObject;

@synthesize SharedCurrency = _SharedCurrency;

@synthesize TotalIncome = _TotalIncome;
@synthesize TotalExpence = _TotalExpence;
@synthesize NetBalance = _NetBalance;


static SharedDataClass *_SharedData;

- (id) init {
    if (self = [super init]) {
     
        self.IncomeSourcesArray = [NSMutableArray array];
        self.IncomeAmountArray = [NSMutableArray array];
        self.ExpenceSourcesArray = [NSMutableArray array];
        self.ExpenceAmountArray = [NSMutableArray array];
        
        
    }
    return self;
}

 +(SharedDataClass *) SharedData
{
    if (!_SharedData) {
        _SharedData = [[SharedDataClass alloc]init];
    }
    return _SharedData;
    }


    
 

@end
