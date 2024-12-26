
import 'package:blayzeup/screens/requestmeetup/HomeNavigation.dart';
import 'package:flutter/material.dart';

class Preferencesettings extends StatefulWidget {
  const Preferencesettings({super.key});

  @override
  State<Preferencesettings> createState() => _PreferencesettingsState();
}

class _PreferencesettingsState extends State<Preferencesettings> {
  double _currentSliderPrimaryValue = 0.8;
  bool _switchValue = false;
  bool isShortTimeClicked = false;
  bool isOvernightClicked = false;
  bool isPlusSizeClicked = false;
  bool isAthleticClicked = false;
  bool isSlimClicked = false;
  bool isCurvyClicked = false;
  bool isAverageClicked = false;
  bool isFairClicked = false;
  bool isDarkClicked = false;
  bool isBrownClicked = false;
  void _handleSwitchChange(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(children: [
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            // Handle onPressed event
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => BottomNavigationBarExampleApp()));
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black, // Optional: customize icon color
          iconSize: 24, // Optional: customize icon size
        ),
        SizedBox(width: 40),
        Text('Preference Settings', style: const TextStyle(fontSize: 20)),
      ])),
      body:SingleChildScrollView(child:  Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                  //padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    //    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black, // Border color
                      // Border width
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Text(
                              'Distance',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                            SizedBox(width: 150),
                            Text(
                              'Up to 80km away',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Slider(
                          value: _currentSliderPrimaryValue,
                          //secondaryTrackValue: _currentSliderSecondaryValue,
                          label: _currentSliderPrimaryValue.round().toString(),
                          activeColor: Color(0xFF351C82),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderPrimaryValue = value;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         //  padding: EdgeInsets.all(80),
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                'Show people slightly out of my preferred range if i run out of profiles to see',
                                style: TextStyle(
                                  fontSize: 15, //fontWeight: FontWeight.bold,
                                  fontFamily: 'satoshi',
                                  color: Colors
                                      .black, // Color needs to be defined properly with a hexadecimal value
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.only(left:30),
                              child: Switch(
                              value: _switchValue,
                              onChanged: _handleSwitchChange,
                              activeColor: _switchValue
                                  ? Color(0xFF351C82)
                                  : Colors.white,
                              inactiveTrackColor: Colors
                                  .white, // Optional: Customize the track color when switch is off
                            ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ))),
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.black, // Border color
                      // Border width
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Text(
                              'Age',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                            SizedBox(width: 280),
                            Text(
                              '18-30',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Slider(
                          value: _currentSliderPrimaryValue,
                          //secondaryTrackValue: _currentSliderSecondaryValue,
                          label: _currentSliderPrimaryValue.round().toString(),
                          activeColor: Color(0xFF351C82),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderPrimaryValue = value;
                            });
                          },
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                'Display profiles with ages outside my preferred range if no matches are available',
                                style: TextStyle(
                                  fontSize: 15, //fontWeight: FontWeight.bold,
                                  fontFamily: 'satoshi',
                                  color: Colors
                                      .black, // Color needs to be defined properly with a hexadecimal value
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Switch(
                              value: _switchValue,
                              onChanged: _handleSwitchChange,
                              activeColor: _switchValue
                                  ? Color(0xFF351C82)
                                  : Colors.white,
                              inactiveTrackColor: Colors
                                  .white, // Optional: Customize the track color when switch is off
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      //    color: Colors.green,
                      ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Text(
                              'Meetup Type',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 20),
                        Wrap(
                          spacing: 50,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isShortTimeClicked = !isShortTimeClicked;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: isShortTimeClicked
                                    ? Color(0xFF351C82)
                                    : Colors.white,
                                foregroundColor: isShortTimeClicked
                                    ? Colors.white
                                    : Colors.black,
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
                                backgroundColor: isOvernightClicked
                                    ? Color(0xFF351C82)
                                    : Colors.white,
                                foregroundColor: isOvernightClicked
                                    ? Colors.white
                                    : Colors.black,
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
                      ],
                    ),
                  ))),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      //    color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Text(
                              'Body Type',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isSlimClicked = !isSlimClicked;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
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
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isAverageClicked = !isAverageClicked;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
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
                      ],
                    ),
                  )
              )
          ),
         SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    //    color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          //  padding: EdgeInsets.all(80),
                          children: [
                            Text(
                              'Skin Color',
                              style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold,
                                fontFamily: 'satoshi',
                                color: Colors
                                    .black, // Color needs to be defined properly with a hexadecimal value
                              ),
                            ),
                            SizedBox(width: 100),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 2),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isFairClicked = !isFairClicked;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
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
                                  backgroundColor:
                                  isDarkClicked ? Color(0xFF351C82) : Colors.white,
                                  foregroundColor:
                                  isDarkClicked ? Colors.white : Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text('Dark'),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isBrownClicked = !isBrownClicked;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                  isBrownClicked ? Color(0xFF351C82) : Colors.white,
                                  foregroundColor:
                                  isBrownClicked ? Colors.white : Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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

                      ],
                    ),
                  )
              )
          ),
        ],
      ),
      )
    );
  }
}
