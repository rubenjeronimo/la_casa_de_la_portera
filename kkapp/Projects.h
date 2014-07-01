//
//  Projects.h
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Project.h"
@interface Projects : NSObject
@property (nonatomic,strong) NSMutableArray *listProjects;
@property (nonatomic,strong) Project *project;
-(NSMutableArray *)createData;
@end
