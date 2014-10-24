//
//  NextPageViewController.m
//  PageViewController
//
//  Created by pcs20 on 10/21/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "NextPageViewController.h"

@interface NextPageViewController (){
    NSMutableArray *iphoneImagesArray;
}

@end

@implementation NextPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    iphoneImagesArray=[[NSMutableArray alloc] initWithObjects:@"1.png",@"2.jpg",@"3.jpeg",@"4.png", nil];
    
    UIImage *selectedPageImage=[UIImage imageNamed:[iphoneImagesArray objectAtIndex:self.pageNumber]];
    
    
   self.iPhoneImagesView.image =selectedPageImage ;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
