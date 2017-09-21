//
//  PhotoObject.m
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

-(instancetype)initWithName:(NSString *)imageName{

    self = [super init];
    
    if (self) {
    
        _image = [UIImage imageNamed:imageName];
    }

    return self;

}

@end
