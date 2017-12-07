//
//  SharedDataClass.m
//  BudgetManagement
//
//  Created by Maryah Alghamdi on 3/16/1439 AH.
//  Copyright © 1439 University of Leeds. All rights reserved.
//

#import "SharedDataClass.h"

@implementation SharedDataClass

@synthesize NumberOfRows = _NumberOfRows;
@synthesize NumberOfIncomeRows = _NumberOfIncomeRows;
@synthesize NumberOfExpenceRows = _NumberOfExpenceRows;
@synthesize IncomeSourcesArray = _IncomeSourcesArray;
@synthesize i = _i;
@synthesize SharedIncomeText = _SharedIncomeText;
@synthesize SharedButton = _SharedButton;


static SharedDataClass *_SharedData;

- (id) init {
    if (self = [super init]) {
     
        self.IncomeSourcesArray = [NSMutableArray array];
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
