//
//  CategoryPicture.h
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhotoObject.h"

@interface CategoryPicture : NSObject

@property (nonatomic,strong) NSString* categoryName;

@property (nonatomic,strong) NSArray <PhotoObject*> *photoArray;

-(instancetype)initWithCategoryName:(NSString*)name;


@end
