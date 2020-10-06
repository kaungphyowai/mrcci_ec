import 'package:flutter/material.dart';
import 'package:mrcci_ec/Pages/Home.dart';
import '../firebase services/authservices.dart';
import 'Signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Auth auth = Auth();
    String email, password;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Email '),
            onChanged: (value) {
              email = value;
            },
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Password '),
            onChanged: (value) {
              password = value;
            },
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () async {
              var result = await auth.login(email.trim(), password);
              if (result != null) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              } else {
                print('login unsucessful');
              }
            },
          ),
          RaisedButton(
            child: Text("Go to SignUp"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
          ),
        ],
      ),
    );
  }
}
