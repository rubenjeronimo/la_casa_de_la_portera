//
//  Project.h
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Project : NSObject
@property (assign) int idProject;
@property (nonatomic,strong) NSString *nameProject;
@property (nonatomic,strong) NSString *detailProject;
@property (nonatomic,strong) UIImage *imageProject;
-(id) initWithName:(NSString *)name andDetail:(NSString *)detail andImage:(UIImage *)image;
-(id)initWithName:(NSString *)name andImage:(UIImage *)image;
-(id) init;
@end
