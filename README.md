## 基础控件UILabel、UIButton、UITextFiel、UIImageView、UIView函数式写法，简化代码
利用函数式编程方法使基础控件写法简易化，需要的属性向后拼接即可

#### 导入方式
+ pods导入
```
pod 'FuncControl'
```
+ 手动导入

直接拖拽 ` FuncChains ` 文件夹至你的项目


#### 引用
```
#import "FuncChains.h"
```

[iOS 函数式编程解析](https://www.jianshu.com/p/f1f06c5b50d3)

---

##### UILabel
```
// FuncControl简化写法
UILabel *label = [UILabel new].func_frame(CGRectMake(15, 50, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor darkGrayColor]).func_text(@"UILabel_FuncChains").func_backgroundColor([UIColor yellowColor]);
[self.view addSubview:label];

// 原生写法
UILabel *labelOrigin = [UILabel new];
labelOrigin.frame = CGRectMake(15, 50, self.view.frame.size.width-15, 50);
labelOrigin.font = [UIFont systemFontOfSize:14];
labelOrigin.textColor = [UIColor darkGrayColor];
labelOrigin.text = @"UILabel_FuncChains";
labelOrigin.backgroundColor = [UIColor yellowColor];
[self.view addSubview:labelOrigin];
```

##### UIButton
```
// FuncControl简化写法
UIButton *button = UIButton.func_init.func_frame(CGRectMake(15, 150, self.view.frame.size.width-15, 50)).func_gradientHorizontalColor(UIColor.redColor,UIColor.blueColor).func_font([UIFont systemFontOfSize:14]).func_titleColor([UIColor whiteColor]).func_title(@"UIButton_FuncChains").func_addTarget_action(self,@selector(buttonClick));
[self.view addSubview:button];

// 原生写法
UIButton *buttonOrigin = [[UIButton alloc]init];
buttonOrigin.frame = CGRectMake(15, 150, self.view.frame.size.width-15, 50);
CAGradientLayer *gradientLayer = [CAGradientLayer layer];
gradientLayer.colors = @[(__bridge id)UIColor.redColor.CGColor, (__bridge id)UIColor.blueColor.CGColor];
gradientLayer.locations = @[@0.0, @1.0];
gradientLayer.startPoint = CGPointMake(0, 0);
gradientLayer.endPoint = CGPointMake(1, 0);
gradientLayer.frame = buttonOrigin.bounds;
[buttonOrigin.layer addSublayer:gradientLayer];

buttonOrigin.titleLabel.font = [UIFont systemFontOfSize:14];
[buttonOrigin setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
[buttonOrigin setTitle:@"UIButton_FuncChains" forState:UIControlStateNormal];
[buttonOrigin addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
[self.view addSubview:buttonOrigin];
```

##### UITextField
```
// FuncControl简化写法
UITextField *textField = UITextField.func_init.func_frame(CGRectMake(15, 250, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor blackColor]).func_placeholder(@"UITextField_FuncChains_PlaceHolder").func_borderStyle(UITextBorderStyleLine).func_clearButtonMode(UITextFieldViewModeWhileEditing).func_addTarget_action_events(self,@selector(textFieldChange),UIControlEventEditingChanged);
textField.tag=10;
[self.view addSubview:textField];

// 原生写法
UITextField *textFieldOrigin = [[UITextField alloc]init];
textFieldOrigin.frame = CGRectMake(15, 250, self.view.frame.size.width-15, 50);
textFieldOrigin.font = [UIFont systemFontOfSize:14];
textFieldOrigin.textColor = [UIColor blackColor];
textFieldOrigin.placeholder = @"UITextField_FuncChains_PlaceHolder";
textFieldOrigin.borderStyle = UITextBorderStyleLine;
textFieldOrigin.clearButtonMode = UITextFieldViewModeWhileEditing;
[textFieldOrigin addTarget:self action:@selector(textFieldChange) forControlEvents:UIControlEventEditingChanged];
[self.view addSubview:textFieldOrigin];
```

##### UIImageView
```
// FuncControl简化写法
UIImageView *image=[UIImageView new].func_frame(CGRectMake(15, 350, 100, 100)).func_backgroundColor(UIColor.greenColor).func_image([UIImage imageNamed:@""]).func_contentMode(UIViewContentModeScaleAspectFill).func_addTapGestureTarget_action(self,@selector(imageClick));
[self.view addSubview:image];

// 原生写法
UIImageView *imageOrigin = [UIImageView new];
imageOrigin.frame = CGRectMake(15, 350, 100, 100);
imageOrigin.backgroundColor = UIColor.greenColor;
imageOrigin.image = [UIImage imageNamed:@""];
imageOrigin.contentMode = UIViewContentModeScaleAspectFill;

imageOrigin.userInteractionEnabled = YES;
UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageClick)];
[imageOrigin addGestureRecognizer:tapGesture];
[self.view addSubview:imageOrigin];
```

##### UIView
```
// FuncControl简化写法
UIView *view=[UIView new].func_frame(CGRectMake(150, 350, 100, 100)).func_backgroundImage([UIImage imageNamed:@"testImage"]).func_shadow([UIColor.blackColor colorWithAlphaComponent:0.4],5);
[self.view addSubview:view];

// 原生写法
UIView *viewOrigin = [UIView new];
viewOrigin.frame = CGRectMake(150, 350, 100, 100);
viewOrigin.layer.contents = (id) [UIImage imageNamed:@"testImage"].CGImage;
viewOrigin.layer.shadowColor = [UIColor.blackColor colorWithAlphaComponent:0.4].CGColor;
viewOrigin.layer.shadowOffset = CGSizeMake(1,1);
viewOrigin.layer.shadowRadius = 5;
viewOrigin.layer.shadowOpacity = 1;
[self.view addSubview:viewOrigin];
```

[iOS 函数式编程解析](https://www.jianshu.com/p/f1f06c5b50d3)

![例图](https://github.com/XueYangLee/FuncControl/blob/master/example%402x.png)
