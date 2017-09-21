//
//  DisplayPhotoCollectionViewCell.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "DisplayPhotoCollectionViewCell.h"
#import "PhotoObject.h"

@interface DisplayPhotoCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *displayImage;

@end

@implementation DisplayPhotoCollectionViewCell



 //overriding the setter so that the label will take in the photoobject's image'
//setting the displayImage to display the photo item  dont use self use "_"
- (void)setPhotoItem:(PhotoObject *)photoItem{
    self.displayImage.image = photoItem.image;
    _photoItem = photoItem;

}






@end
