//
//  tvc_Music.m
//  CodeTest
//
//  Created by administrator on 5/11/15.
//  Copyright (c) 2015 Curtiss Pope. All rights reserved.
//

#import "tvc_Music.h"

@interface tvc_Music ()

@end
NSDictionary *record;
NSMutableArray *musicarray;
@implementation tvc_Music

- (void)viewDidLoad {
    [super viewDidLoad];
    musicarray=[[NSMutableArray alloc]init];
    
    record=[NSDictionary dictionaryWithObjectsAndKeys:@"Artist",@"Metallica",@"Desc",@"Metal band",@"ID",@"1",nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 1 ;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
   
    
    
    [musicarray addObject:record];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mycell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=@"hello There";
   // cell.textLabel.text=[[musicarray objectAtIndex:indexPath.row ] objectForKey:@"Artist"];
    
    //cell.textLabel.text=[[[musicarray objectAtIndex:indexPath.row] objectForKey:@"Artist"] capitalizedString];

    
   // cell.detailTextLabel.text=@"what";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
    
    //if its already open, then close it
    
    
    //else
    
    
    
    
    
    
    
    


    UITableViewCell *selectedcell=[tableView cellForRowAtIndexPath:indexPath];
    
    
    
    
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    // Add it as a subview.
    [selectedcell addSubview:myView];
    
    
    CGRect newFrameOfMyView = CGRectMake(0.0f, 0.0f, 200.0f, 200.0f);
    /*
     * Alternatively you could just set the width/height or whatever you'd like with this:
     * CGRect newFrameOfMyView = myView.frame;
     * newFrameOfMyView.size.height = 200.0f;
     * newFrameOfMyView.size.width = 200.0f;
     */
    [UIView animateWithDuration:3.5f
                     animations:^{
                         //myView.frame = newFrameOfMyView;
                         
                        
                         
                         selectedcell.contentView.frame=CGRectMake(0.0f, 0.0f, 800, 700);
                          UILabel *selectedcellLabel=selectedcell.textLabel;
                         
                         //change size
                          selectedcell.frame=CGRectMake(0.0f, 0.0f, 800, 200);
                         selectedcellLabel.backgroundColor=[UIColor redColor];
                     }
                     completion:^(BOOL finished){
                         NSLog( @"woo! Finished animating the frame of myView!" ); 
                     }];
    
    
    
    
    
    
    
 
    

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
