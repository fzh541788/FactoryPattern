//
//  ViewController.m
//  FactoryPatternDemo
//
//  Created by young_jerry on 2021/6/6.
//

#import "ViewController.h"
#import "SimpleFactory.h"
#import "Calculate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _testTextField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    _testTextField.backgroundColor = [UIColor grayColor];
    [self.view addSubview:_testTextField];
    
    _testButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [_testButton setTitle:@"确定" forState:UIControlStateNormal];
    [self.view addSubview:_testButton];
    [_testButton setFrame:CGRectMake(200, 200, 200, 200)];
    [_testButton addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
}
- (void)pressButton {
   id whichOne = [SimpleFactory createCalcute:_testTextField.text];
    [whichOne calculate];
}
@end
