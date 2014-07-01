//
//  Project.m
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Project.h"

@implementation Project

-(id) initWithName:(NSString *)name andDetail:(NSString *)detail andImage:(UIImage *)image{
    self = [super init];
    if (self) {
        _nameProject = name;
        _detailProject = detail;
        _imageProject = image;
    }
    return self;
}

-(id)initWithName:(NSString *)name andImage:(UIImage *)image{
    self = [self initWithName:name andDetail:@"detalle" andImage:image];
    return self;
}

-(id) init{
    self = [self initWithName:@"name" andDetail:@"detail" andImage:[UIImage imageNamed:@"default.jpg"]];
    return self;
}

@end
