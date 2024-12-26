import 'package:flutter/material.dart';

class SetProfile2 extends StatefulWidget {
  const SetProfile2({Key? key}) : super(key: key);

  @override
  State<SetProfile2> createState() => _SetProfile2State();
}

class _SetProfile2State extends State<SetProfile2> {
  bool isSlimClicked = false;
  bool isAthleticClicked = false;
  bool isCurvyClicked = false;
  bool isAverageClicked = false;
  bool isPlusSizeClicked = false;
  bool isFairClicked = false;
  bool isDarkClicked = false;
  bool isBrownClicked = false;
  bool isPetiteClicked = false;
  bool isAverageHeightClicked = false;
  bool isTallClicked = false;
  bool isShortTimeClicked = false;
  bool isOvernightClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Create Your Preference",
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Help us find the best matches for you by selecting your preferences",
                style: TextStyle(fontSize: 15, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              const Text(
                'Blood Type',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              Text(
                'Select a maximum of 3',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              // Buttons for Body Type

              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isSlimClicked = !isSlimClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                            isSlimClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isSlimClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Slim'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAthleticClicked = !isAthleticClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor: isAthleticClicked
                            ? Color(0xFF351C82)
                            : Colors.white,
                        foregroundColor:
                            isAthleticClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Athletic'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isCurvyClicked = !isCurvyClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                            isCurvyClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isCurvyClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Curvy'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height:10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAverageClicked = !isAverageClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                            isAverageClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isAverageClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Average'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isPlusSizeClicked = !isPlusSizeClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor: isPlusSizeClicked
                            ? Color(0xFF351C82)
                            : Colors.white,
                        foregroundColor:
                            isPlusSizeClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Plus Size'),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 40),
              // ---------------------------------------------------------- skin color
              const Text(
                'Skin Color',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isFairClicked = !isFairClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                            isFairClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isFairClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text('Fair'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isDarkClicked = !isDarkClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            isDarkClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isDarkClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text('Dark'),
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left:20),

                      child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isBrownClicked = !isBrownClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor:
                            isBrownClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                            isBrownClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Brown'),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 40),

              // ------------------------------------------------------Height

              // Buttons for Height
              Text(
                'Height',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 1),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isPetiteClicked = !isPetiteClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                        isPetiteClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                        isPetiteClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Text('Petite (Under 5"3)'),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isAverageHeightClicked = !isAverageHeightClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor: isAverageHeightClicked
                            ? Color(0xFF351C82)
                            : Colors.white,
                        foregroundColor:
                        isAverageHeightClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Average (5"3 - 5"7)'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isTallClicked = !isTallClicked;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xFFEDE8FC), // Border color
                          width: 2, // Border width
                        ),
                        elevation: 0,
                        backgroundColor:
                        isTallClicked ? Color(0xFF351C82) : Colors.white,
                        foregroundColor:
                        isTallClicked ? Colors.white : Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Tall (Over 5"7)'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              // ------------------------------------------------------------------------Meetup
              // Buttons for Meetup Type
              Text(
                'Meetup Type',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'You can update this later in your Preferance settings',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isShortTimeClicked = !isShortTimeClicked;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xFFEDE8FC), // Border color
                        width: 2, // Border width
                      ),
                      elevation: 0,
                      backgroundColor:
                          isShortTimeClicked ? Color(0xFF351C82) : Colors.white,
                      foregroundColor:
                          isShortTimeClicked ? Colors.white : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Short-time'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isOvernightClicked = !isOvernightClicked;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: Color(0xFFEDE8FC), // Border color
                        width: 2, // Border width
                      ),
                      elevation: 0,
                      backgroundColor:
                          isOvernightClicked ? Color(0xFF351C82) : Colors.white,
                      foregroundColor:
                          isOvernightClicked ? Colors.white : Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Overnight'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SetProfile2(),
  ));
}
