//
//  ViewController.m
//  App1804
//
//  Created by iOS-School-1 on 18.04.17.
//  Copyright © 2017 Learning. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllerNext.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button; //weak - сам иос убирает ссылку

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.tabBarItem.title = @"Первый таб";
    self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:666];
    //[self .button addTarget:self action:@selector(buttonTapped:) forControlEvents:(UIControlEventTouchUpInside)]; // тоже самое что и (1)
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)buttonTapped:(id)sender{ //(1)
    ViewControllerNext *vc = [ViewControllerNext new];
    vc.view.backgroundColor = [UIColor cyanColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
