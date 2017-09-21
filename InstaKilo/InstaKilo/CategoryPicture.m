//
//  CategoryPicture.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "CategoryPicture.h"

@implementation CategoryPicture


-(instancetype)initWithCategoryName:(NSString *)name{

    self = [super init];
    if (self) {
        _categoryName = name;
        //this instaniates the array property 
        [self createPhoto];
    }
    return self;

}

-(void)createPhoto{
    
    if ([_categoryName isEqualToString:@"Batman"]){
        [self createPhotosWithName:@"batman"];
    }

    if ([self.categoryName isEqualToString:@"Animal"]){
        [self createPhotosWithName:@"animal"];
    
    }
    
    if ([self.categoryName isEqualToString:@"BallPlayer"]){
        [self createPhotosWithName:@"basketball"];
    
    }
}



- (void)createPhotosWithName:(NSString *)name {
    NSMutableArray <PhotoObject *> *temp = [NSMutableArray array];
    for (NSInteger i = 1; i < 5; ++i) {
        NSString *imgName = [NSString stringWithFormat:@"%@%ld%ld.jpg", name, (long)0, (long)i];
        [temp addObject:[[PhotoObject alloc] initWithName:imgName]];
    }
    self.photoArray = [temp copy];
}






@end
