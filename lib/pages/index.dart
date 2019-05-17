import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  _Login createState() => new _Login();
}

class _Login extends State<Login> {
  TextEditingController _usrname = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '用户登录',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[400],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Form(
            key: _formKey,
            autovalidate: true,
            child: Column(
              children: <Widget>[
                TextFormField(
                  autofocus: true,
                  controller: _usrname,
                  decoration: InputDecoration(
                      labelText: '用户名',
                      hintText: '用户名或邮箱，不可为空',
                      icon: Icon(
                        Icons.person,
                        color: Colors.indigo[400],
                      )),
                  validator: (v) {
                    return v.trim().length > 0 ? null : '必填:用户名不可为空';
                  },
                ),
                TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.indigo[400],
                      )),
                  obscureText: true,
                  validator: (v) {
                    return v.trim().length > 5 ? null : '密码不能少于5位';
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                            padding: EdgeInsets.all(18),
                            child: Text('登录'),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: (){
                              if((_formKey.currentState as FormState).validate()){
                                print('表单验证通过,登录成功');
                              }
                            }),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
