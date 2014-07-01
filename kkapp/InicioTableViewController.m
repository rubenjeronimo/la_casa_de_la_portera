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
    [self setObjeto:[self.listProjects objectAtIndex:indexPath.row]];
    
    
    [self performSegueWithIdentifier:@"DetailProject" sender:self];
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DetailProject"]) {
        NSIndexPath *path = [self.tableView indexPathForCell:sender];
        self.objeto = [self.listProjects objectAtIndex:path.row];
        DetailProjectViewController *dVC = [segue destinationViewController];
        NSString *nombreImagen =[self.objeto objectForKey:@"image"];
        NSString *detail = [self.objeto objectForKey:@"detail"];
        [dVC setNombreImagen:nombreImagen];
        dVC.detailProject.text = detail;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
