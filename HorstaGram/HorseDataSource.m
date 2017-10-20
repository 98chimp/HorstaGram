//
//  HorseDataSource.m
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import "HorseDataSource.h"

@implementation HorseDataSource

- (instancetype)init
{
    if (self == [super init])
    {
        NSString *longBio = @"Horses exhibit a diverse array of coat colors and distinctive markings, described by a specialized vocabulary. Often, a horse is classified first by its coat color, before breed or sex. Horses of the same color may be distinguished from one another by white markings,[41] which, along with various spotting patterns, are inherited separately from coat color.\nMany genes that create horse coat colors and patterns have been identified. Current genetic tests can identify at least 13 different alleles influencing coat color,[43] and research continues to discover new genes linked to specific traits. The basic coat colors of chestnut and black are determined by the gene controlled by the Melanocortin 1 receptor,[44] also known as the 'extension gene' or 'red factor,' as its recessive form is 'red' (chestnut) and its dominant form is black.[45] Additional genes control suppression of black color to point coloration that results in a bay, spotting patterns such as pinto or leopard, dilution genes such as palomino or dun, as well as graying, and all the other factors that create the many possible coat colors found in horses.\nHorses which have a white coat color are often mislabeled; a horse that looks 'white' is usually a middle-aged or older gray. Grays are born a darker shade, get lighter as they age, but usually keep black skin underneath their white hair coat (with the exception of pink skin under white markings). The only horses properly called white are born with a predominantly white hair coat and pink skin, a fairly rare occurrence.[45] Different and unrelated genetic factors can produce white coat colors in horses, including several different alleles of dominant white and the sabino-1 gene.[46] However, there are no 'albino' horses, defined as having";
        
        Horse *horse1 = [[Horse alloc] initWithName:@"Winston" breed:@"Arabian" bio:@"This horse can fly and farts rainbows!" andImageName:@"horse02"];
        Horse *horse2 = [[Horse alloc] initWithName:@"Donald" breed:@"Mustang" bio:@"This horse talks shit!" andImageName:@"horse01"];
        Horse *horse3 = [[Horse alloc] initWithName:@"BoBo" breed:@"Unicorn" bio:longBio andImageName:@"horse03.jpg"];
        Horse *horse4 = [[Horse alloc] initWithName:@"DoDo" breed:@"Mustang" bio:longBio andImageName:@"horse04.jpg"];
        Horse *horse5 = [[Horse alloc] initWithName:@"Fabio" breed:@"Pony" bio:longBio andImageName:@"horse05.jpg"];
        Horse *horse6 = [[Horse alloc] initWithName:@"MoMo" breed:@"Unicorn" bio:longBio andImageName:@"horse06.jpg"];
        Horse *horse7 = [[Horse alloc] initWithName:@"YoYo" breed:@"Unicorn" bio:longBio andImageName:@"horse07.jpg"];
        Horse *horse8 = [[Horse alloc] initWithName:@"Booba" breed:@"Unicorn" bio:longBio andImageName:@"horse08.jpg"];
        
        self.horses = @[horse1, horse2, horse3, horse4, horse5, horse6, horse7, horse8];
    }
    
    return self;
}

@end
