//
//  JETCenterViewController.m
//  Pamphlet
//
//  Created by freesoar on 14-7-2.
//  Copyright (c) 2014年 jetsen. All rights reserved.
//

#import "JETCenterViewController.h"
#import "MMDrawerBarButtonItem.h"
#import "UIViewController+MMDrawerController.h"

@interface JETCenterViewController ()

@end

@implementation JETCenterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (IOS_7)
    {
        [[UINavigationBar appearance] setBarTintColor:[UIColor
                                                       colorWithRed:78.0/255.0
                                                       green:126.0/255.0
                                                       blue:246.0/255.0
                                                       alpha:1.0]];
        [self setNeedsStatusBarAppearanceUpdate];
    }
    else
    {
        [self.navigationController.navigationBar setTintColor:[UIColor
                                                               colorWithRed:78.0/255.0
                                                               green:126.0/255.0
                                                               blue:246.0/255.0
                                                               alpha:1.0]];
    }

    
    
    
    [self.view setBackgroundColor:[UIColor brownColor]];
    
    [self setupLeftMenuButton];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

-(void)setupLeftMenuButton
{
    MMDrawerBarButtonItem * leftDrawerButton = [[MMDrawerBarButtonItem alloc] initWithTarget:self action:@selector(leftDrawerButtonPress:)];
    [self.navigationItem setLeftBarButtonItem:leftDrawerButton animated:YES];
}

#pragma mark - Button Handlers
-(void)leftDrawerButtonPress:(id)sender{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
@end
