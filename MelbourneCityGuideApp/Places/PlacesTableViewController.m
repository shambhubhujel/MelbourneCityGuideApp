//
//  PlacesTableViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 8/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "PlacesTableViewController.h"
#import "PlacesTableViewCell.h"
#import "DetailsViewController.h"

@interface PlacesTableViewController ()

@end

@implementation PlacesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.rowHeight=120;
    NSString *path= [[NSBundle mainBundle]pathForResource:@"MelbourneBestPlaces" ofType:@"plist" ];
    NSDictionary *dict =[[NSDictionary alloc] initWithContentsOfFile:path];
    dataSelect  = dict[@"Places"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataSelect.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PlacesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary    *dict= dataSelect[indexPath.row];
    cell.cellTitle.text =dict[@"Title"];
    cell.cellAddress.text=dict[@"Address"];
    cell.cellImage.image=[UIImage imageNamed:dict[@"Image"]];
    
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier]isEqualToString:@"showDetail"]){
        DetailsViewController *detailView=[segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *dict = dataSelect[myIndexPath.row];
        detailView.detailModal =@[dict[@"Title"],
                                  dict[@"Address"],
                                  dict[@"Image"],
                                  dict[@"Description"],
                                  dict[@"Latitute"],
                                  dict[@"Longitude"]];
        
    }
    
}

@end
