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

 // returns the number of section
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.pictureHandler.categoryArray.count;
}


//ask how many section and how many items in each section.
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    
    //the array of photoobject is inside picturehandler 2d array.
    return self.pictureHandler.categoryArray[section].photoArray.count;
    
}




//indexpath gives you section and row(item) information we can input into the formula.
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
    DisplayPhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    //categorypicture holds pictureobjects accessing 2d arrays.
    PhotoObject *photoObject = self.pictureHandler.categoryArray[indexPath.section].photoArray[indexPath.row];
    
    [cell setPhotoItem:photoObject];
  
    
    
    
    
    
    
    return cell;

}

//this sets the header of each section... the numberOfitemsIneachSection shows you how many items is already in one category.

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{


    SectionLabelCollectionReusableView *view;
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
    
        view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"headerReuseIdentifier" forIndexPath:indexPath];
        
        //assigning the label to the cateogry's name the array already knows where all the items are from numberOfItemsInEachSection method...
        view.label.text = self.pictureHandler.categoryArray[indexPath.section].categoryName;
    
    }
    return view;
    
}






//Header file
//- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    
//    reuseableCellCLass *view;
//    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
//        view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
//
//    }
//    return view;
//    
//    
//}





@end
