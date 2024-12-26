import 'package:flutter/material.dart';
import 'package:blayzeup/widgets/Verification.dart';

import 'package:gradient_borders/gradient_borders.dart';

class Verifypaage extends StatefulWidget {
  const Verifypaage({super.key});

  @override
  State<Verifypaage> createState() => _VerifypaageState();
}


class _VerifypaageState extends State<Verifypaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 300,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [

                  SizedBox(height: 50,),
                  Text(
                    'Verify Your Code',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Enter verification code sent to email should be here',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      Colors.red,
                                      Colors.blue,
                                    ])
                                )

                            ),
                            child:  TextField(

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                              border: GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    Colors.red,
                                    Colors.blue,
                                  ])
                              )

                            ),
                          child:  TextField(

                          decoration: InputDecoration(
                            filled: true,
                           fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      )
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      Colors.red,
                                      Colors.blue,
                                    ])
                                )

                            ),
                            child:  TextField(

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                      ),
                      SizedBox(width: 10),
                      Expanded(
                          child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      Colors.red,
                                      Colors.blue,
                                    ])
                                )

                            ),
                            child:  TextField(

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Didnt receive the OTP?"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Resend",
                            style: TextStyle(),
                          )
                      ),
                      Text("in 5:58"),

                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Or change Email Address",
                        style: TextStyle(),
                      )
                  ),

                ],
              ),
              Container(
                  padding: const EdgeInsets.only(top: 30, left: 3),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed callback logic here
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Verification()));

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
                        'Verify',
                        style:
                        TextStyle(fontSize: 15), // Adjust text style as needed
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
