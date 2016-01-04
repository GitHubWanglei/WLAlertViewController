# WLAlertViewController
系统 alertView 封装, 在组件内部做系统版本判断,兼容 ios8之前和之后版本,直接使用即可.

示例代码:

    //初始化
    WLAlertViewController *alertv=[WLAlertViewController alertWithTitle:@"提示消息"
                                                                message:@"登陆失败"
                                                               delegate:self
                                                      cancelButtonTitle:@"确定"
                                                         preferredStyle:WLAlertControllerStyleAlert];
    //添加按钮
    [alertv addOtherButtonWithTitle:@"返回" style:WLAlertActionStyleDefault];
    //添加输入框
    [alertv addAlertViewTextFieldWithStyle:WLAlertViewTextFieldStyleSecureTextInput
              textFieldPlaceholderAtIndex0:@"请输入密码"
              textFieldPlaceholderAtIndex1:nil];
    //显示
    [alertv show];
