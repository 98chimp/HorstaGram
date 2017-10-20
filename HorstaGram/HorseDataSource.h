//
//  HorseDataSource.h
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Horse.h"

@interface HorseDataSource : NSObject

@property (nonatomic, strong) NSArray<Horse *> *horses;

@end
