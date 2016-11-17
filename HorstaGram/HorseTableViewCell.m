//
//  HorseTableViewCell.m
//  HorstaGram
//
//  Created by Shahin on 2016-11-16.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "HorseTableViewCell.h"

@interface HorseTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *BreedLabel;

@property (nonatomic) Horse *horse;

@end

@implementation HorseTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];

}

- (void)configureCellWithHorse:(Horse *)horse
{
    self.horseImageView.image = [UIImage imageNamed:horse.imageName];
    self.nameLabel.text = horse.horseName;
    self.BreedLabel.text = horse.horseBreed;
}

@end
