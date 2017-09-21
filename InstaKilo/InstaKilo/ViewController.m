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
    
    //pictureHandler contains the photoObject items therefore i can access it like this
    
    return self.pictureHandler.categoryArray[section].photoArray.count;
    
    
    
}


//indexpath gives you section information and row information
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    DisplayPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    PhotoObject *photoObject = self.pictureHandler.categoryArray[indexPath.section].photoArray[indexPath.row];
    
    [cell setPhotoItem:photoObject];
  
    
    return cell;
    
//    DisplayPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
//    
//    PhotoObject *items = self.pictureHandler.categoryArray[indexPath.section].photoArray[indexPath.item];
//    
//    [cell setPhotoItem:items];
//    
//    return cell;
    
}




@end
