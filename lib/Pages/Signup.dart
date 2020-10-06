import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name, email, password, role, phone, confirmpassword, birthday;
  List<String> roles = [
    'Chief Executive Committee',
    'Executive Committee',
    'General Management Team',
  ];
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              onChanged: (value) {
                name = value;
              },
              decoration: InputDecoration(
                labelText: 'Name *',
              ),
              validator: (value) {
                return value.isEmpty ? 'This field is requried' : null;
              },
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(
                labelText: 'email *',
              ),
              validator: (value) {
                return value.isEmpty ? 'This field is requried' : null;
              },
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(
                labelText: 'password *',
              ),
              validator: (value) {
                return value.length <= 6 ? 'This field is requried' : null;
              },
            ),
            TextFormField(
              onChanged: (value) {
                confirmpassword = value;
              },
              decoration: InputDecoration(
                labelText: 'confirmed password *',
              ),
              validator: (value) {
                return identical(confirmpassword, password)
                    ? 'This field is requried'
                    : null;
              },
            ),
            TextFormField(
              onChanged: (value) {
                phone = value;
              },
              decoration: InputDecoration(
                labelText: 'phone *',
              ),
              validator: (value) {
                return value.isEmpty ? 'This field is requried' : null;
              },
            ),
            DropdownButton(
              value: role,
              items: roles
                  .map((item) => DropdownMenuItem(
                        child: Text(item),
                        value: item,
                        onTap: () {
                          setState(() {
                            role = item;
                          });
                        },
                      ))
                  .toList(),
              onChanged: (value) {
                print(value);
              },
            ),
            InputDatePickerFormField(
              firstDate: DateTime.utc(1900, 11, 9),
              lastDate: DateTime.utc(2100, 11, 9),
              errorFormatText: 'The date is wrong',
              fieldHintText: 'Enter Your brith date',
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}

// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             decoration:
//                 InputDecoration(border: InputBorder.none, hintText: 'Email '),
//             onChanged: (value) {
//               email = value;
//             },
//           ),
//           TextField(
//             decoration: InputDecoration(
//                 border: InputBorder.none, hintText: 'Password '),
//             onChanged: (value) {
//               password = value;
//             },
//           ),
//           DropdownButton(
//               value: role,
//               items: roles
//                   .map((item) => DropdownMenuItem(
//                         child: Text(item),
//                         value: item,
//                         onTap: () {
//                           setState(() {
//                             role = item;
//                           });
//                         },
//                       ))
//                   .toList(),
//               onChanged: (value) {
//                 print(value);
//               }),
//           RaisedButton(
//             onPressed: () {},
//           )
//         ],
//       ),
