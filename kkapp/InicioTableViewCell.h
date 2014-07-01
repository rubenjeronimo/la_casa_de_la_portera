//
//  InicioTableViewCell.h
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InicioTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageViewProject;
@property (weak, nonatomic) IBOutlet UILabel *nameLabelProject;
@property (weak, nonatomic) IBOutlet UILabel *detailLabelProject;
-(void) reDibujaSerie;
@end
