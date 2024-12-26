import 'package:blayzeup/screens/requestmeetup/HomeNavigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'home.dart';

class amount extends StatefulWidget {
  const amount({super.key});

  @override
  State<amount> createState() => _amountState();
}

class _amountState extends State<amount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height - 100,
          width: double.infinity,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () { Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const BottomNavigationBarExampleApp()));
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Fund Wallet',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight:
                          FontWeight.w500), // Adjust text style as needed
                ),
              ],),
            SizedBox(height: 40,),
          Padding(padding: EdgeInsets.only(left: 10),child: Text(
            'Enter Amount'
                '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),),
            Container(
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
                      hintText: '0.00',
                      prefixText: '₦',
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly

                    ],
                  ),
                ),
            SizedBox(height: 150,),
            Container(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed callback logic here
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => amount()));
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                    Color(0xFF351C82), // Text color

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10), // Button border radius
                    ),
                  ), // Adjust padding as needed
                  child: const Text(
                    'Fund Wallet',
                    style: TextStyle(
                        fontSize:
                        15), // Adjust text style as needed
                  ),
                ))
          ],),
        )
      ),
    );
  }
}
