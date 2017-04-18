//
//  ViewControllerNextViewController.m
//  App1804
//
//  Created by iOS-School-1 on 18.04.17.
//  Copyright © 2017 Learning. All rights reserved.
//

#import "ViewControllerNext.h"

@interface ViewControllerNext ()

@property (nonatomic, strong) IBOutlet UIButton *buttonBack;

@end

@implementation ViewControllerNext

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.buttonBack.backgroundColor = [UIColor grayColor];
    self.buttonBack = [[UIButton alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
    [self.view addSubview:self.buttonBack];
    
    
    [self.buttonBack addTarget:self action:@selector(backButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)backButtonTapped:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
//    UIViewController *vc = [UIViewController new];
//    vc.view.backgroundColor = [UIColor cyanColor];
//    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
