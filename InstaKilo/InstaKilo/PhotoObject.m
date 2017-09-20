//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

-(instancetype)initWithImage:(UIImage*)image{

    self = [super init];
    
    if (self) {
    
        _image = [UIImage imageNamed:@"image"];
    }

    return self;

}

@end
