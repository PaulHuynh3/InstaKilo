//
//  DisplayPhotoCollectionViewCell.h
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface DisplayPhotoCollectionViewCell : UICollectionViewCell


//set it as a property to set its property to the label, image.
@property (nonatomic) PhotoObject* photoItem;



@end
