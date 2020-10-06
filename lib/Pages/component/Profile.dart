import 'package:flutter/material.dart';

import '../../firebase services/authservices.dart';
import '../Home.dart';
import '../Login.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: Colors.redAccent[600],
        textColor: Colors.black,
        child: Text('Sign Out'),
        elevation: 10.0,
        onPressed: () {
          _auth.signout();
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => Login()));
        },
      ),
    );
  }
}
