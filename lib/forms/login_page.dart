import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _emailController = TextEditingController();
  var _passwordController = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 32,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //Text inputs goes here

              TextFormField(
                controller: _emailController,
                focusNode: _emailFocusNode,
                validator: (value) {
                  if (value.length < 7) {
                    return 'Email should have more than three letters';
                  } else
                    return null;
                },
                decoration: InputDecoration(
                    hintText: 'e.g. vivek@gmail.com',
                    icon: Text('Email'),
                    suffixIcon: Icon(Icons.email),
                    helperText: 'Enter your email'),
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                    hintText: 'enter the password',
                    icon: Text('Password'),
                    suffixIcon: Icon(Icons.lock),
                    helperText: 'Enter some password'),
                obscureText: true,
                obscuringCharacter: '*',
                validator: (value) {
                  if (value.length < 6) {
                    return 'Enter correct password';
                  } else
                    return null;
                },
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  print(_emailController.text);
                  // FocusScope.of(context).requestFocus(_passwordFocusNode);
                  _formKey.currentState.validate();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
