import 'package:blayzeup/screens/Login/sigup.dart';
import 'package:blayzeup/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white,fontFamily: 'Poppins',
      ),
      home: const splashscreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/2ndpage.png',
            fit: BoxFit.cover, // Use BoxFit.cover to make the image cover the entire space
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            child: Expanded(
              child: Text(
                'FIND YOUR MATCH',
                style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold,
                  color: Color(
                      0xFF33353D),
                  fontFamily: 'Poppins', // Color needs to be defined properly with a hexadecimal value
                ),
              ),
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Center(
                child: Text(
                  'Ditch the endless swiping. Browse profiles of exciting people nearby and request meetups with a tap',
                  textAlign: TextAlign.center,
                  // Align text center within the Text widget
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF33353D),
                  ),
                ),
              ),
            ),
          ),
          Container(
              width: 398,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed callback logic here
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => selectgender()));
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
                  padding: EdgeInsets.all(15), // Adjust padding as needed
                  child: Text(
                    'Get Started',
                    style:
                        TextStyle(fontSize: 15,fontFamily: 'Poppins'),
                    // Adjust text style as needed
                  ),
                ),
              )),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Center contents horizontally
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    'Already have an Account?',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF33353D),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 30, bottom: 20, left: 10),
                      child: GestureDetector(
                        onTap: () {
                          // Handle tap event here
                          // Add any other logic you want to execute on tap
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Color(0xFF33353D),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class selectgender extends StatefulWidget {
  @override
  State<selectgender> createState() => _selectgenderState();
}

class _selectgenderState extends State<selectgender> {
  Color _containerColor1 = Colors.white; // Initial color of the container

  Color _containerColor2 = Colors.white;

  void _changeColor1() {
    setState(() {
      // Toggle color between blue and red
      _containerColor1 = _containerColor1 == Color(0xFF351C82)
          ? Colors.white
          : Color(0xFF351C82);
    });
  }

  void _changeColor2() {
    setState(() {
      // Toggle color between blue and red
      _containerColor2 = _containerColor2 == Color(0xFF351C82)
          ? Colors.white
          : Color(0xFF351C82);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 100, bottom: 20),
            child: Expanded(
              child: Text(
                'Select Gender',
                style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color(
                      0xFF33353D), // Color needs to be defined properly with a hexadecimal value
                ),
              ),
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Center(
                child: Text(
                  'To personalize your experience, please select your gender',
                  textAlign: TextAlign.center,
                  // Align text center within the Text widget
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF33353D),
                  ),
                ),
              ),
            ),
          ),
          Container(
              width: 170,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: const GradientBoxBorder(
                          gradient: LinearGradient(colors: [
                        Colors.red,
                        Colors.blue,
                      ])),
                      borderRadius: BorderRadius.circular(12.0),
                      // Rounded corners
                      color:
                          _containerColor1, // Background color of the container
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                            child: IconButton(
                                icon: const ImageIcon(
                                  AssetImage(
                                      'assets/images/woman.png'), // Replace with your image path
                                ),
                                iconSize: 100.0,
                                // Adjust the size
                                padding: EdgeInsets.all(8.0),
                                // Add padding if needed
                                onPressed: _changeColor1 // Action when pressed

                                )),
                        Text('Female')
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                            gradient: LinearGradient(colors: [
                          Colors.red,
                          Colors.blue,
                        ])),
                        borderRadius: BorderRadius.circular(12.0),
                        // Rounded corners
                        color:
                            _containerColor2, // Background color of the container
                      ),
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: IconButton(
                                icon: const ImageIcon(
                                  AssetImage(
                                      'assets/images/man.png'), // Replace with your image path
                                ),
                                iconSize: 100,
                                // Adjust the size
                                padding: EdgeInsets.all(8.0),
                                // Add padding if needed
                                onPressed: _changeColor2),
                          ),
                          Text('Male')
                        ],
                      ))
                ],
              )),
          Container(
              padding: EdgeInsets.only(top: 50),
              width: 398,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed callback logic here
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Sigup()));
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
                  padding: EdgeInsets.all(15), // Adjust padding as needed
                  child: Text(
                    'Proceed',
                    style:
                        TextStyle(fontSize: 15), // Adjust text style as needed
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
