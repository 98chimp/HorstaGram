//
//  HorseDetailViewController.m
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import "HorseDetailViewController.h"

@interface HorseDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UITextView *bioTextView;

@end

@implementation HorseDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureWithHorse:self.horse];
}

- (void)configureWithHorse:(Horse *)horse
{
    self.navigationItem.title = horse.name;
    self.horseImageView.clipsToBounds = YES;
    self.horseImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.horseImageView.image = [UIImage imageNamed:horse.imageName];
    self.bioTextView.text = horse.bio;
}

@end
