//
//  Horse.m
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import "Horse.h"

@implementation Horse

-(instancetype)initWithName:(NSString *)name breed:(NSString *)breed bio:(NSString *)bio andImageName:(NSString *)imageName
{
    if (self == [super init])
    {
        self.name = name;
        self.breed = breed;
        self.imageName = imageName;
        self.bio = bio;
    }
    
    return self;
}
@end
