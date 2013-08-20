//
//  wygjywViewController.m
//  attachmail
//
//  Created by Wyg Jyw on 8/20/13.
//  Copyright (c) 2013 wygjyw. All rights reserved.
//

#import "wygjywViewController.h"
#import "wygjywViewControllerCell.h"

@interface wygjywViewController ()

@property (strong, nonatomic) NSArray *fileList;

@end

@implementation wygjywViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _fileList = @[@"10 Great iPhone Tips.pdf", @"camera-photo-tips.html", @"foggy.jpg", @"Hello World.ppt", @"no more complaint.png", @"Why Appcoda.doc"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_fileList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    wygjywViewControllerCell *cell = (wygjywViewControllerCell *)[tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    cell.attachFileName.text = _fileList[indexPath.row];
    cell.attchFileIcon.image = [UIImage imageNamed:[NSString stringWithFormat:@"icon%d", indexPath.row]];
    return cell;
}


@end
