//
//  DetailProjectViewController.m
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 30/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "DetailProjectViewController.h"
#import "InicioTableViewController.h"
@interface DetailProjectViewController ()

@end

@implementation DetailProjectViewController


-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailProject.text = self.detail;
    self.imageProject.image = [UIImage imageNamed:self.nombreImagen];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//- (IBAction)atras:(id)sender {
////    InicioTableViewController *iTVC = [[InicioTableViewController alloc]init];
////    [self.navigationController pushViewController:iTVC animated:YES];
//    [self.navigationController popToRootViewControllerAnimated:YES];
//}



@end
