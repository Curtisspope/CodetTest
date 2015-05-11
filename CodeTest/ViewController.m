//
//  ViewController.m
//  CodeTest
//
//  Created by administrator on 5/11/15.
//  Copyright (c) 2015 Curtiss Pope. All rights reserved.
//

#import "ViewController.h"
#import "MusicCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>



@end
NSMutableArray * musicarray;
NSDictionary *record;

@implementation ViewController
@synthesize tv;

- (void)viewDidLoad {
    
    
    [super viewDidLoad];
    
    
  
    // musicarray=[[NSMutableArray alloc] initWithObjects:@"Artist 1",@"Music",@"hello", nil];
 
    
   
 
   
    
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return musicarray.count;
    

}



-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    
    
    
    
    
    NSString *identifier=@"musiccell";
    
    
    
    MusicCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier] ;
    
    
    
    
    NSLog(@"Ran it");
    
    
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    
    cell.artistname = musicarray[indexPath.row];
cell.artistID.text=@"hello";
    
    cell.artistdesc.text=[[[musicarray objectAtIndex:indexPath.row] objectForKey:@"Artist"] capitalizedString];
    
    
    return cell;
    
    
    


    

}
@end
