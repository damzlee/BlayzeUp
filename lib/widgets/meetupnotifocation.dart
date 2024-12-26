import 'package:flutter/material.dart';

class meetupnotification extends StatefulWidget {
  const meetupnotification({super.key});

  @override
  State<meetupnotification> createState() => _meetupnotificationState();
}

class _meetupnotificationState extends State<meetupnotification> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [Padding(padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(height: 100,//color: Colors.black,

        child: Row(children: [
           // Add some spacing before the Container
          SizedBox(width: 10),
          Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle, // Makes the container circular
          ),
            child: ClipOval(
              child: Image.asset(
                'assets/images/2ndpage.png',
                width: 70,
                height: 70,
                fit: BoxFit.cover, // Ensure the image covers the entire circle
              ),
            ),
          ),
          const SizedBox(width: 20), // Add some spacing after the Container
        Container(
      //    color: Colors.red,
          padding: EdgeInsets.only(right: 15), // Padding for the Container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
            children: [
              Text(
                'Your Pleasure giver just sent you a wink!',
                style: TextStyle(fontWeight:FontWeight.w300,fontSize:16,color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                '10:00AM',
                style: TextStyle(fontWeight:FontWeight.w400,fontSize:14,color: Color(0xFF33353D)),
              ),
              SizedBox(height: 10),
              Expanded(child:
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white, // Button color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Color(0xFF351C82), // Border color
                      width: 2, // Border width
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'View Profile',
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
              ),
            ],),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Color(0xFF351C82),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFF351C82), Color(0xFFEC4A23)], // Gradient colors
              stops: [0.0, 1.0], // Gradient stops
            ),// Makes the container circular
          ),
        )
        ],),

      ),
    ),
      const Divider(
        color: Colors.grey, // Line color
        thickness: 1, // Line thickness
        indent: 20, // Space to the left of the line
        endIndent: 20, // Space to the right of the line
      ),
    ]);
  }
}
