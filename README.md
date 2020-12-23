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

[iOS 函数式编程理解](https://www.jianshu.com/p/f1f06c5b50d3)

---

##### UILabel
```
UILabel *label = [UILabel new].func_frame(CGRectMake(15, 50, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor darkGrayColor]).func_text(@"UILabel_FuncChains").func_backgroundColor([UIColor yellowColor]);
[self.view addSubview:label];
```

##### UIButton
```
UIButton *button = UIButton.func_init.func_frame(CGRectMake(15, 150, self.view.frame.size.width-15, 50)).func_gradientHorizontalColor(UIColor.redColor,UIColor.blueColor).func_font([UIFont systemFontOfSize:14]).func_titleColor([UIColor whiteColor]).func_title(@"UIButton_FuncChains").func_addTarget_action(self,@selector(buttonClick));
[self.view addSubview:button];
```

##### UITextField
```
UITextField *textField = UITextField.func_init.func_frame(CGRectMake(15, 250, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor blackColor]).func_placeholder(@"UITextField_FuncChains_PlaceHolder").func_borderStyle(UITextBorderStyleLine).func_clearButtonMode(UITextFieldViewModeWhileEditing).func_addTarget_action_events(self,@selector(textFieldChange),UIControlEventEditingChanged);
textField.tag=10;
[self.view addSubview:textField];
```

##### UIImageView
```
UIImageView *image=[UIImageView new].func_frame(CGRectMake(15, 350, 100, 100)).func_backgroundColor(UIColor.greenColor).func_image([UIImage imageNamed:@""]).func_contentMode(UIViewContentModeScaleAspectFill).func_addTapGestureTarget_action(self,@selector(imageClick));
[self.view addSubview:image];
```

##### UIView
```
UIView *view=[UIView new].func_frame(CGRectMake(150, 350, 100, 100)).func_backgroundImage([UIImage imageNamed:@"testImage"]).func_shadow([UIColor.blackColor colorWithAlphaComponent:0.4],5);
[self.view addSubview:view];
```

[iOS 函数式编程理解](https://www.jianshu.com/p/f1f06c5b50d3)

