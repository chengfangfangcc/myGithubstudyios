//
//  ViewController.m
//  abc
//
//  Created by powerful on 2017/7/18.
//  Copyright © 2017年 cff. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    //注册通知 并且接收通知    添加一个观察者，可以为它指定一个方法，名字和对象。接受到通知时，执行方法。
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getNotification:) name:@"notificationName" object:nil];
    
    //发送通知   不传通知内容
//    [[NSNotificationCenter defaultCenter] postNotificationName:@"notificationName" object:nil];
    //发送通知   传通知内容    参数说明：第一个参数是通知名称   第二个参数是通知对象,可以为nil   第三个参数是通知包含的内容，也可以为nil
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notificationName" object:nil userInfo:@{@"data":@"asd"}];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(10, 100, 60, 40);
    [btn setTitle:@"click" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}
                                                                  
- (void)onBtn {
    SecondViewController *vc = [[SecondViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}


//接收到通知的操作
- (void)getNotification:(NSNotification *)notification {
    NSString *str = notification.userInfo[@"data"];
    NSLog(@"接收到通知了，通知传过来的数据：%@",str);
}

//移除观察者
- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
