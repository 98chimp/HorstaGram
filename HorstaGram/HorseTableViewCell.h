//
//  HorseTableViewCell.h
//  HorstaGram
//
//  Created by Shahin on 2016-11-16.
//  Copyright © 2016 98%Chimp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Horse.h"

@interface HorseTableViewCell : UITableViewCell

- (void)configureCellWithHorse:(Horse *)horse;

@end
