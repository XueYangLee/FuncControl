//
//  ViewController.m
//  FuncControl
//
//  Created by Singularity on 2019/12/27.
//  Copyright © 2019 Singularity. All rights reserved.
//

#import "ViewController.h"
#import "FuncChains.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *label = [UILabel new].func_frame(CGRectMake(15, 50, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor darkGrayColor]).func_text(@"UILabel_FuncChains").func_backgroundColor([UIColor yellowColor]);
    [self.view addSubview:label];
    
    
    UIButton *button = UIButton.func_init.func_frame(CGRectMake(15, 150, self.view.frame.size.width-15, 50)).func_gradientHorizontalColor(UIColor.redColor,UIColor.blueColor).func_font([UIFont systemFontOfSize:14]).func_titleColor([UIColor whiteColor]).func_title(@"UIButton_FuncChains").func_addTarget_action(self,@selector(buttonClick));
    [self.view addSubview:button];
    
    
    UITextField *textField = UITextField.func_init.func_frame(CGRectMake(15, 250, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor blackColor]).func_placeholder(@"UITextField_FuncChains_PlaceHolder").func_borderStyle(UITextBorderStyleLine).func_clearButtonMode(UITextFieldViewModeWhileEditing).func_addTarget_action_events(self,@selector(textFieldChange),UIControlEventEditingChanged);
    textField.tag=10;
    [self.view addSubview:textField];
    
    
    UIImageView *image=[UIImageView new].func_frame(CGRectMake(15, 350, 100, 100)).func_backgroundColor(UIColor.greenColor).func_image([UIImage imageNamed:@""]).func_contentMode(UIViewContentModeScaleAspectFill).func_addTapGestureTarget_action(self,@selector(imageClick));
    [self.view addSubview:image];
    
    
    UIView *view=[UIView new].func_frame(CGRectMake(150, 350, 100, 100)).func_backgroundImage([UIImage imageNamed:@"testImage"]).func_shadow([UIColor.blackColor colorWithAlphaComponent:0.4],5);
    [self.view addSubview:view];
    
}

- (void)buttonClick{
    NSLog(@"buttonClick");
}

- (void)textFieldChange{
    UITextField *textField=[self.view viewWithTag:10];
    NSLog(@"%@->textFieldChange",textField.text);
}

- (void)imageClick{
    NSLog(@"imageClick");
}


@end
