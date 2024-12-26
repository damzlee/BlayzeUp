import 'package:blayzeup/screens/requestmeetup/Profile/Home.dart';
import 'package:flutter/material.dart';
void modalsheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 50,
          width: MediaQuery.of(context).size.height * 50,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settingshome()));
                      },
                      icon: ImageIcon(
                        AssetImage('assets/images/close.png'),
                        // Replace with your image path
                        size: 24, // Adjust icon size as needed
                        color: Colors.black, // Optional: set color of the icon
                      ),
                    )
                  ],
                ),
                Center(
                  child: Text(
                    'Whats on your mind ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight:
                        FontWeight.bold), // Adjust text style as needed
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // Adjust the value as needed
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.9),
                            spreadRadius: 2, // blurRadius: 5,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:
                          "Not here for a long time, just a good time",
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFD0D5DD), // Updated border color
                              width: 1.0, // Border width
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(
                                  0xFFD0D5DD), // Border color when focused
                              width: 1.0, // Border width when focused
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(
                                  0xFFD0D5DD), // Border color when enabled
                              width: 1.0, // Border width when enabled
                            ),
                          ),
                          fillColor: Color(0xFFD0D5DD).withOpacity(0.1),
                          // Background color with some opacity
                          filled: true,
                        ),
                        maxLines: 5,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed callback logic here
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settingshome()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF351C82), // Text color

                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(10), // Button border radius
                        ),
                      ), // Adjust padding as needed
                      child: const Text(
                        'Done',
                        style: TextStyle(
                            fontSize: 15), // Adjust text style as needed
                      ),
                    ))
              ],
            ),
          ),
        );
      });
}
