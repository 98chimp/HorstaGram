//
//  HorseTableViewCell.m
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import "HorseTableViewCell.h"

@interface HorseTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UILabel *horseNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *horseBreedLabel;

@end


@implementation HorseTableViewCell

-(void)configureWithHorse:(Horse *)horse
{
    self.horseImageView.clipsToBounds = YES;
    self.horseImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.horseImageView.image = [UIImage imageNamed:horse.imageName];
    self.horseNameLabel.text = horse.name;
    self.horseBreedLabel.text = horse.breed;
}

@end
