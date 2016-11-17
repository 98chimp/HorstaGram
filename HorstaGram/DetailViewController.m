//
//  DetailViewController.m
//  HorstaGram
//
//  Created by Shahin on 2016-11-16.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *horseImageView;
@property (weak, nonatomic) IBOutlet UITextView *horseBioTextView;

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self configureView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.horseBioTextView scrollsToTop];
}


#pragma mark - Helpers

- (void)configureView
{
    self.title = self.horse.horseName;
    self.horseImageView.image = [UIImage imageNamed:self.horse.imageName];
    self.horseBioTextView.text = self.horse.horseBio;
}

@end
