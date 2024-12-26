import 'package:flutter/material.dart';

import '../main.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohomepage();
  }
_navigatetohomepage() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>  MyHomePage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF241359) ,
      body: Center(
          child: Container(
        child: Image.asset(
          'assets/images/splashscreen.png',
          height: 60,
          scale: 2.5,
        ),
      )),
    );
  }
}


