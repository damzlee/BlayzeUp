import 'package:blayzeup/screens/requestmeetup/activity.dart';
import 'package:blayzeup/screens/requestmeetup/util/profilecards.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../Modals/settingshomeModal.dart';
import '../Settings/preferencesettings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int counter = 4;

class _HomeState extends State<Home> {
  Color _backgroundColor = Colors.white; // Default background color

  // Method to change background color
  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color; // Update the background color
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double imageHeight = screenSize.height * 0.7;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const SizedBox(width: 10),
              Image.asset(
                'assets/images/logo.png',
                height: 30,
                scale: 2.5,
              ),
              SizedBox(width: 190),
              IconButton(
                onPressed: () {
                  // Handle onPressed event
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const activity()));

                },
                icon: Icon(Icons.add_alert),
                color: Color(0xFFEC4A23), // Optional: customize icon color
                iconSize: 24, // Optional: customize icon size
              ),
              IconButton(
                onPressed: () {
                  // Handle onPressed event
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Preferencesettings()));

                },
                icon: Icon(Icons.settings_input_component_rounded),
                color: Color(0xFFEC4A23), // Optional: customize icon color
                iconSize: 24, // Optional: customize icon size
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: screenSize.width,
              // Set width to screen width
              height: imageHeight,
              // Set height to screen height // Set height
              child: Stack(
                children: [
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile1.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile1.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                  Positioned.fill(
                      child: profilecards(
                    assetPath: 'assets/images/Profile2.png',
                  )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    _changeBackgroundColor(Color(0xFF351C82));
                  },
                  child: Container(
                    width: 200,
                    // Same width as the ElevatedButton container
                    height: 50,
                    // Same height as the ElevatedButton container
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.blue],
                        ),
                        width: 1.0, // Border width
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not Interested',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          SizedBox(width: 10),
                          ImageIcon(
                            AssetImage('assets/images/close.png'),
                            // Replace with your image path
                            size: 24, // Adjust icon size as needed
                            color:
                                Colors.black, // Optional: set color of the icon
                          ),
                          SizedBox(width: 10),
                          // Space between icon and text
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10), // Space between buttons
                ElevatedButton(
                  onPressed: () {
                    // Add your onPressed callback logic here
                    modalsheet(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF351C82), // Text color

                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(5), // Button border radius
                    ),
                  ),
                  child: const Padding(
                      padding: EdgeInsets.all(15),
                      // Adjust padding as needed
                      child: Row(
                        children: [
                          Text(
                            'Request Meet up',
                            style: TextStyle(
                                fontSize: 15), // Adjust text style as needed
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ImageIcon(
                            AssetImage('assets/images/heart.png'),
                            // Replace with your image path
                            size: 24, // Adjust icon size as needed
                            color:
                                Colors.white, // Optional: set color of the icon
                          ),
                        ],
                      )),
                )
              ],
            ),
          ],
        )));
  }
}

