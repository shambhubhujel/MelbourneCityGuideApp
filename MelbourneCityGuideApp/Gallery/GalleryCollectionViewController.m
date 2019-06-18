//
//  GalleryCollectionViewController.m
//  MelbourneCityGuideApp
//
//  Created by MacOnHelios300 on 9/5/19.
//  Copyright © 2019 MacOnHelios300. All rights reserved.
//

#import "GalleryCollectionViewController.h"
#import "GalleryCollectionViewCell.h"

@interface GalleryCollectionViewController ()

@end

@implementation GalleryCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    array = @[@"Image1",
              @"Image2",
              @"Image3",
              @"Image4",
              @"Image5",
              @"Image6",
              @"Image7",
              @"Image8",
              @"Image9",
              @"Image10",
              @"Image11",
              @"Image12",
              @"Image13",];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GalleryCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    cell.cellImageView.image =  [UIImage imageNamed:array[indexPath.row]];
    
    return cell;
}
//Set cell size as per iPhone and iPad resolutions

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath{
    float   width = [[UIScreen mainScreen]bounds].size.width;
    float heightCell= 0;
    float widthCell=0;
    
    //iPhone X,6,6s,7,8
    if (width==375){
        heightCell=230;
        widthCell=355;
    }
    //iPhone 6+,7+,6s+,8+
    else if (width==414){
        heightCell=230;
        widthCell=394;
    }
    //iPhone every other
    else if (width==320){
        heightCell=200;
        widthCell=300;
    }
    //For iPads 9.7 inch screens
    else if(width==768){
        heightCell=520;
        widthCell=748;
    }
    //For iPads 12.9 inch screens
    else if(width==1024){
        heightCell=560;
        widthCell=1004;
    }
    //For iPads screens
    else{
        heightCell=540;
        widthCell=748;
    }    return  CGSizeMake(widthCell, heightCell);
}


#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
