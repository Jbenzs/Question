//
//  ViewController.m
//  Exercise obj-C
//
//  Created by Benzs Jean Francois on 1/9/17.
//  Copyright © 2017 benzsjeanfrancois. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)questionAsked:(id)sender {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Question" message:@" 3 + 5 * 2 = 1" preferredStyle:UIAlertControllerStyleAlert];
  UIAlertAction *yes = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
      
      UIAlertController *result = [UIAlertController alertControllerWithTitle:@"Answer" message:@" That is WRONG!" preferredStyle:UIAlertControllerStyleAlert];
      UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil];
      [result addAction:ok];
      
      [self presentViewController:result animated:YES completion:nil];
      
  }];
    
    UIAlertAction *no = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        UIAlertController *result = [UIAlertController alertControllerWithTitle:@"Answer" message:@"CORRECT!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Done" style:UIAlertActionStyleDefault handler:nil];
        [result addAction:ok];
        
        [self presentViewController:result animated:YES completion:nil];
        
    }];
    
    [alert addAction:yes];
    [alert addAction:no];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
