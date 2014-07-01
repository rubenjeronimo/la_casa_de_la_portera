//
//  Projects.m
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "Projects.h"


@implementation Projects

-(NSMutableArray *)createData{
    self.listProjects = [[NSMutableArray alloc]init];
    NSDictionary *denise = [NSDictionary dictionaryWithObjects:@[@"denise",@"1",@"denise.jpg" ]forKeys:@[@"name",@"detail",@"image"]];
    [self.listProjects addObject:denise];
    NSDictionary *mig = [NSDictionary dictionaryWithObjects:@[@"mig",@"3",@"mig.jpg" ]forKeys:@[@"name",@"detail",@"image"]];
    [self.listProjects addObject:mig];
    NSDictionary *sotano = [NSDictionary dictionaryWithObjects:@[@"sotano",@"2",@"sotano.jpg" ]forKeys:@[@"name",@"detail",@"image"]];
    [self.listProjects addObject:sotano];
    NSDictionary *tesorero = [NSDictionary dictionaryWithObjects:@[@"tesorero",@"3",@"tesorero.jpg"]forKeys:@[@"name",@"detail",@"image"]];
    [self.listProjects addObject:tesorero];


    return self.listProjects;
}




@end
