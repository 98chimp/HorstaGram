//
//  Horse.h
//  HorstaGram
//
//  Created by Shahin on 2016-11-16.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Horse : NSObject

@property (nonatomic) NSString *imageName;
@property (nonatomic) NSString *horseName;
@property (nonatomic) NSString *horseBreed;
@property (nonatomic) NSString *horseBio;

- (instancetype)initWithName:(NSString *)name breed:(NSString *)breed bio:(NSString *)bio andImageName:(NSString *)imageName;

@end
