//
//  PictureHandler.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PictureHandler.h"

@implementation PictureHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        CategoryPicture *batman = [[CategoryPicture alloc]initWithCategoryName:@"Batman"];
        
        CategoryPicture *animal = [[CategoryPicture alloc]initWithCategoryName:@"Animal"];
        
        CategoryPicture *ballPlayer = [[CategoryPicture alloc]initWithCategoryName:@"BallPlayer"];
        
        _categoryArray = @[batman,animal,ballPlayer];
        
    }
    return self;
    
}




@end
