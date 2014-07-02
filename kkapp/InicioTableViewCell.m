//
//  InicioTableViewCell.m
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "InicioTableViewCell.h"

@implementation InicioTableViewCell

//- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
//{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

- (void)awakeFromNib
{
    
    [self setBackgroundProject];
    [self setBackgroundImage];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void) setBackgroundImage{
    self.imageViewProject.layer.cornerRadius = self.imageViewProject.bounds.size.height/2;
    self.imageViewProject.clipsToBounds = YES;
}

-(void) setBackgroundProject{
    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [UIColor colorWithRed:0.731 green:0.441 blue:0.14 alpha:0.5].CGColor;
    layer.cornerRadius = 20;
    [self.layer insertSublayer:layer atIndex:0];
}

-(void) reDibujaSerie{
    
}

@end
