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
@property (weak, nonatomic) IBOutlet UITextView *detailProject;
@property (nonatomic,strong) NSString *nombreImagen;
@property (nonatomic,strong) NSString *detail;
//- (IBAction)atras:(id)sender;
@end
