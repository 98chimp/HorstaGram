//
//  Horse.h
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Horse : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *bio;

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed bio:(NSString *)bio andImageName:(NSString *)imageName;

@end
