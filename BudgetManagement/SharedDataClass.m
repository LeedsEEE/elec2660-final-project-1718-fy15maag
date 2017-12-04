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
@synthesize testString = _testString;

static SharedDataClass *_SharedData;

- (id) init {
    if (self = [super init]) {
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
