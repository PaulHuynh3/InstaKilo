//
//  ViewController.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (strong, nonatomic)PictureHandler *pictureHandler;
@property (strong, nonatomic)DisplayPhotoCollectionViewCell *displayPhotoCollectionViewCell;

@end


@implementation ViewController

- (void)viewDidLoad {
    self.pictureHandler = [[PictureHandler alloc] init];
    [super viewDidLoad];

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    // returns the number of section
    return self.pictureHandler.categoryArray.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    //return the section and the number of items inside.
    //the array of photoobject is inside picturehandler
    return self.pictureHandler.categoryArray[section].photoArray.count;
    
}


//indexpath gives you section and row(item) information we can input into the formula.
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    DisplayPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    //its a class photoobject because the items are photoObjects.
    PhotoObject *photoObject = self.pictureHandler.categoryArray[indexPath.section].photoArray[indexPath.row];
    
    [cell setPhotoItem:photoObject];
  
    
    return cell;

}


//Add header file
//-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    UICollectionReusableView *reusableView = nil;
//    
//    if (kind == UICollectionElementKindSectionHeader) {
//        InstaCollectionReusableHeaderView *headerView = [self.myCollectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"MyHeader" forIndexPath:indexPath];
//        headerView.headerLabel.text = _imageArray[indexPath.section][0];
//        reusableView = headerView;
//    }
//    
//    return reusableView;
//}




@end
