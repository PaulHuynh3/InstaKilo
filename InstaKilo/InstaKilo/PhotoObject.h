//
//  PhotoObject.h
//  InstaKilo
//
//  Created by Paul on 2017-09-20.
//  Copyright © 2017 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface PhotoObject : NSObject

@property (strong, nonatomic) UIImage *image;

-(instancetype)initWithName:(NSString*)imageName;


@end
