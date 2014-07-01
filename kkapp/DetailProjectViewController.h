//
//  DetailProjectViewController.h
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailProjectViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageProject;
@property (nonatomic,strong) NSString *nombreImagen;
@property (weak, nonatomic) IBOutlet UITextView *detailProject;
@end
