//
//  HorseTableViewCell.h
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Horse.h"

@interface HorseTableViewCell : UITableViewCell

- (void)configureWithHorse:(Horse *)horse;

@end
