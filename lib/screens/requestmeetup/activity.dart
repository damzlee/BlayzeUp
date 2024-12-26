
import 'package:flutter/material.dart';

import '../../widgets/meetupnotifocation.dart';
import 'HomeNavigation.dart';

class activity extends StatefulWidget {
  const activity({super.key});

  @override
  State<activity> createState() => _activityState();
}

class _activityState extends State<activity> {

  final List _meetupnotifications = [''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
              children: <Widget>[
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavigationBarExampleApp()));// Handle onPressed event
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // Optional: customize icon color
          iconSize: 24, // Optional: customize icon size
        ),
        const SizedBox(width: 40),
        Text('Activity', style: const TextStyle(fontSize: 20)),
      ])
      ),
      body: ListView.builder(
          itemCount:_meetupnotifications.length,
          itemBuilder: (context,index){
        return meetupnotification();
      }),

    );
  }
}
