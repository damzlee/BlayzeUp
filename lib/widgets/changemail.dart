import 'package:flutter/material.dart';
import 'package:blayzeup/widgets/EnableLocation.dart';
class changeemail extends StatefulWidget {
  const changeemail.Changeemail({super.key});

  @override
  State<changeemail> createState() => _changeemailState();
}

class _changeemailState extends State<changeemail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
   // height: MediaQuery.of(context).size.height - 400,
    width: double.infinity,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Column(
    children: <Widget>[
      SizedBox(height: 100),
      Text(
        'Change Email Address',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 20),
      Column( children: [
        Container(
            padding: EdgeInsets.only(right: 180, bottom: 10),
            child:  const Text(
              'Enter new Email Address',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
        TextField(
          decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white, // Border color
                  width: 2, // Border width
                ),
              ),
              fillColor: Colors.white.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.email)),
        )
      ]
      ),

      ]
    ),
      const SizedBox(height: 500),
      Container(
          padding: const EdgeInsets.only(top: 30, left: 3),
          child: ElevatedButton(
            onPressed: () {
              // Add your onPressed callback logic here
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Location()));

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
                'Continue',
                style:
                TextStyle(fontSize: 15), // Adjust text style as needed
              ),
            ),
          )
      ),
    ])
    )
    )
    );
  }
}
