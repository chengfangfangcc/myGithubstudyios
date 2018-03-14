//
//  ViewController.m
//  abc
//
//  Created by powerful on 2017/7/18.
//  Copyright © 2017年 cff. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    NSString *str = [NSString stringWithFormat:@"¥%d",122];
    NSMutableAttributedString *muStr = [[NSMutableAttributedString alloc] initWithString:str];
    [muStr addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlineStyleSingle|NSUnderlinePatternSolid) range:NSMakeRange(0,str.length)];
    
//    [muStr addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(0,str.length)];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 60, 40)];
    
    lab.text = [NSString stringWithFormat:@"%@",str];
    
    [lab setAttributedText:muStr];
    
    [self.view addSubview:lab];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
