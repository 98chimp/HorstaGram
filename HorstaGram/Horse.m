//
//  Horse.m
//  HorstaGram
//
//  Created by Shahin on 2016-11-16.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "Horse.h"

@implementation Horse

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed bio:(NSString *)bio andImageName:(NSString *)imageName
{
    
    if (self = [super init]) {
        self.horseName = name;
        self.horseBreed = breed;
        self.horseBio = bio;
        self.imageName = imageName;
    }
    
    return self;
}

@end
