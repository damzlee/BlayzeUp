import 'package:blayzeup/screens/requestmeetup/wallet/home.dart';
import 'package:blayzeup/screens/requestmeetup/Profile/Home.dart';
import 'package:flutter/material.dart';

import 'Home/home.dart';

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Expanded(child:Home() ),
    Expanded(child:wallethome()),
    Expanded(child:Settingshome()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  ImageIcon(
              AssetImage('assets/images/nav1.png'), // Replace with your image path
              size: 24, // Adjust icon size as needed
              //color: Colors.black, // Optional: set color of the icon
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/nav2.png'), // Replace with your image path
              size: 24, // Adjust icon size as needed
              color: Colors.black, // Optional: set color of the icon
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/nav3.png'), // Replace with your image path
              size: 24, // Adjust icon size as needed
              color: Colors.black, // Optional: set color of the icon
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
  //      selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
