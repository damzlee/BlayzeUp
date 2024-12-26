import 'package:flutter/material.dart';


import '../screens/requestmeetup/HomeNavigation.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
    child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    height: MediaQuery.of(context).size.height - 100,
    width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Column(
        children: <Widget>[
          Image.asset(
            'assets/images/verification.png',
            height: 150,
            scale: 1.5,
          ),
         const Text(
            'Verification Successful!',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Container(
              padding: const EdgeInsets.only(top: 30, left: 3),
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed callback logic here
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const BottomNavigationBarExampleApp()));

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
                    'Setup your Profile',
                    style:
                    TextStyle(fontSize: 15), // Adjust text style as needed
                  ),
                ),
              )
          ),
          ])
      ])
    )
    )
    );
  }
}
