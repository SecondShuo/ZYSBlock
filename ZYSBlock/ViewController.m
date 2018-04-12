//
//  ViewController.m
//  ZYSBlock
//
//  Created by 依萌匠心网络部 on 2018/4/8.
//  Copyright © 2018年 张洋硕. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
//#import <r>
@interface ViewController ()
@property(nonatomic,strong) Person *Pe;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.view rac]
    //定义
    //    返回值(^名称)(参数) = ^(实现) {
    //        代码块
    //    };
    
    //    名称（）
    
    self.view.backgroundColor = [UIColor cyanColor];
    //block -- inlineblock
   //1.
    void(^YSBlock)(void) = ^() {
        NSLog(@"zhang");
    };
    YSBlock();
//    2.block作为对象的属性
    Person *P = [[Person alloc]init];
    P.myblock = YSBlock;
    _Pe = P;
// 3.block作为方法的参数 **常见
    
    [P ert:^{
        NSLog(@"yang");
        NSLog(@"");
    }];
    
//    3. block 返回值
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.Pe.myblock();
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
