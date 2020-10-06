import 'package:flutter/material.dart';
import 'package:mrcci_ec/Pages/component/Profile.dart';
import 'package:mrcci_ec/Pages/component/Meeting_List.dart';
import '../firebase services/authservices.dart';
import 'Login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    MeetingList(),
    Text(
      'Index 1: Events',
      style: optionStyle,
    ),
    Text(
      'Index 2: Chat',
      style: optionStyle,
    ),
    Profile(),
  ];

  static const List<Widget> _appBarText = <Widget>[
    Text(
      'Meetings',
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 26,
      ),
    ),
    Text(
      'Events',
      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 26),
    ),
    Text(
      'Chat',
      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 26),
    ),
    Text(
      'Profile',
      style: TextStyle(fontWeight: FontWeight.w300, fontSize: 26),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _appBarText.elementAt(_selectedIndex)),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.maxFinite,
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              title: Text('Meetings'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_view_day),
              title: Text('Events'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              title: Text('Chat'),
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue[200],
        onTap: _onItemTapped,
        elevation: 8.0,
        backgroundColor: Colors.black,
      ),
    );
  }
}
