//
//  InicioTableViewController.m
//  kkapp
//
//  Created by Ruben Jeronimo Fernandez on 29/06/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "InicioTableViewController.h"
#import "Projects.h"
#import "InicioTableViewCell.h"
#import "DetailProjectViewController.h"


@interface InicioTableViewController ()
@property (nonatomic,strong) NSMutableArray *listProjects;
@property (nonatomic,strong) NSDictionary *objeto;
@property (nonatomic,strong) NSDictionary *project;
@end

@implementation InicioTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{

    Projects *addProjects = [[Projects alloc]init];
    _listProjects = [addProjects createData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.contentInset = UIEdgeInsetsMake(2.5, 0, 2.5, 0);
    self.title = @"La casa de la portera";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.listProjects count];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    InicioTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellProject" forIndexPath:indexPath];
    
    // Configure the cell...
    
    self.project = [self.listProjects objectAtIndex:indexPath.row];
    
    cell.nameLabelProject.text = [self.project objectForKey:@"name"];
    cell.detailLabelProject.text = [self.project objectForKey:@"detail"];
    cell.imageViewProject.image = [UIImage imageNamed:[self.project objectForKey:@"image"]];

   [cell reDibujaSerie];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DetailProject"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        DetailProjectViewController *detailsVC = [segue destinationViewController];
        self.objeto = [self.listProjects objectAtIndex:indexPath.row];

        NSString *nombreImagen =[self.objeto objectForKey:@"image"];
        NSString *detail = [self.objeto objectForKey:@"detail"];
        
        detailsVC.nombreImagen = nombreImagen;
        detailsVC.detail = detail;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
