## 基础控件UILabel、UIButton、UITextField函数式写法，简化代码
利用函数式编程方法使基础控件写法简易化，需要的属性向后拼接即可


### UILabel
```
UILabel *label = [UILabel new].func_frame(CGRectMake(15, 50, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor darkGrayColor]).func_text(@"UILabel_FuncChains").func_backgroundColor([UIColor yellowColor]);
[self.view addSubview:label];
```

### UIButton
```
UIButton *button = UIButton.func_init.func_frame(CGRectMake(15, 150, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_titleColor([UIColor blueColor]).func_title(@"UIButton_FuncChains").func_addTarget_action(self,@selector(buttonClick));
[self.view addSubview:button];
```

### UITextField
```
UITextField *textField = UITextField.func_init.func_frame(CGRectMake(15, 250, self.view.frame.size.width-15, 50)).func_font([UIFont systemFontOfSize:14]).func_textColor([UIColor blackColor]).func_placeholder(@"UITextField_FuncChains_PlaceHolder").func_borderStyle(UITextBorderStyleLine).func_clearButtonMode(UITextFieldViewModeWhileEditing).func_addTarget_action_events(self,@selector(textFieldChange),UIControlEventEditingChanged);
textField.tag=10;
[self.view addSubview:textField];
```


[iOS 函数式编程理解](https://www.jianshu.com/p/f1f06c5b50d3)
