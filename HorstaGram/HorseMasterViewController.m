//
//  HorseMasterViewController.m
//  HorstaGram
//
//  Created by Shahin on 2017-10-19.
//  Copyright © 2017 98chimp. All rights reserved.
//

#import "HorseMasterViewController.h"
#import "HorseDetailViewController.h"
#import "HorseTableViewCell.h"
#import "HorseDataSource.h"

@interface HorseMasterViewController ()

#pragma mark - Outlets
@property (weak, nonatomic) IBOutlet UITableView *horseTableView;

#pragma mark - Properties
@property (nonatomic, strong) HorseDataSource *dataSource;
@property (nonatomic, strong) NSIndexPath *selectedIndexPath;

@end

@implementation HorseMasterViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.horseTableView.delegate = self;
    self.horseTableView.dataSource = self;
    self.dataSource = [HorseDataSource new];
    
}

#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.horses.count;
}

#pragma mark - Table view delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HorseTableViewCell *leftCell = [tableView dequeueReusableCellWithIdentifier:@"leftCell" forIndexPath:indexPath];
    HorseTableViewCell *rightCell = [tableView dequeueReusableCellWithIdentifier:@"rightCell" forIndexPath:indexPath];
    Horse *horse = self.dataSource.horses[indexPath.row];
    
    if (indexPath.row % 2 == 0)
    {
        [leftCell configureWithHorse:horse];
        return leftCell;
    }
    else
    {
        [rightCell configureWithHorse:horse];
        return rightCell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//     this is how to get rid of the annoying grey highlight of the selected cell
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self performSegueWithIdentifier:@"toDetailScreen" sender:self];
}

#pragma mark - Navigation
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    HorseDetailViewController *detailVC = (HorseDetailViewController *) segue.destinationViewController;
    self.selectedIndexPath = self.horseTableView.indexPathForSelectedRow;
    Horse *horse = self.dataSource.horses[self.selectedIndexPath.row];
    detailVC.horse = horse;
}

@end
