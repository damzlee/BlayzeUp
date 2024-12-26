
import 'package:flutter/material.dart';
import 'package:blayzeup/screens/createprofile/setprofile.dart';

import '../screens/requestmeetup/HomeNavigation.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 200,
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(children: <Widget>[

                  SizedBox(height: 50,),
                  Text(
                    'Enable Location',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/Location.png',
                        height: 300,
                        scale: 1.5,
                      ),
                    ),
                  ]),
                ]),
                const SizedBox(height: 100),
                Container(
                    padding: const EdgeInsets.only(top: 30, left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed callback logic here
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const MainProfile()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF351C82), // Text color

                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(8), // Button border radius
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        // Adjust padding as needed
                        child: Text(
                          'Allow Location Access',
                          style: TextStyle(
                              fontSize: 15), // Adjust text style as needed
                        ),
                      ),
                    )
                ),

                Container(
                    padding: const EdgeInsets.only(top: 30, left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed callback logic here
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) => const changeemail()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor:  Color(0xFF351C82),
                       // backgroundColor: Color(0xFF351C82), // Text color

                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(8),
                          side: BorderSide(color: Color(0xFF351C82))// Button border radius
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15),
                        // Adjust padding as needed
                        child: Text(
                          'Not now',
                          style: TextStyle(
                              fontSize: 15), // Adjust text style as needed
                        ),
                      ),
                    )
                ),

              ]
          )
      ),
    )
    );
  }
}
