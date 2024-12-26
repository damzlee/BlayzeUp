import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class setprofile1 extends StatefulWidget {
  const setprofile1({Key? key}) : super(key: key);

  @override
  _setprofile1State createState() => _setprofile1State();
}

class _setprofile1State extends State<setprofile1> {
  DateTime _selectedDate = DateTime.now();
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Create Profile",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Setup your blayze Up profile",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700],fontFamily: 'Poppins'),
                  ),
                  SizedBox(height: 40),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Display Name',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.9),
                              spreadRadius: 2,
                              // blurRadius: 5,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "@Pleasurelover24",
                            contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white, // Border color
                                width: 2, // Border width
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.1),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Date Of Birth',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.9),
                              spreadRadius: 2,
                              // blurRadius: 5,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ), child:
                      InkWell(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: IgnorePointer(
                          child: TextFormField(
                            controller: _dateController,
                            decoration: InputDecoration(
                              hintText: DateFormat('yyyy-MM-dd').format(_selectedDate),
                              suffixIcon: Icon(Icons.date_range_sharp),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white, // Border color
                                  width: 2, // Border width
                                ),
                              ),
                              fillColor: Colors.white.withOpacity(0.1),
                              filled: true,
                            ),
                          ),
                        ),
                      ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Bio',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),// Adjust the value as needed
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.9),
                              spreadRadius: 2,// blurRadius: 5,
                              offset: Offset(0,2), // changes position of shadow
                            ),
                          ],
                        ), child:
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Not her for a long time just a good Time",
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFEDE8FC), // Updated border color
                              width: 2, // Border width
                            ),
                          ),
                          fillColor: Color(0xFFEDE8FC).withOpacity(0.1), // Background color with some opacity
                          filled: true,
                        ),
                        maxLines: 5,
                      )
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('yyyy-MM-dd').format(_selectedDate);
      });
    }
  }
}
