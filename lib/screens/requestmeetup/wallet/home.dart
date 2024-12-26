import 'package:flutter/material.dart';

import 'enteramount.dart';

class wallethome extends StatefulWidget {
  const wallethome({super.key});

  @override
  State<wallethome> createState() => _wallethomeState();
}

class _wallethomeState extends State<wallethome> {
  bool _switchValue = false;

  void _handleSwitchChange(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height - 100,
              width: double.infinity,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Wallet',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight:
                              FontWeight.bold), // Adjust text style as needed
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        //color: Color(0xFF351C82),
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xFF351C82),
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Available Balance',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                '₦ 0.00',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
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
                                          Color(0xFF493A75), // Text color

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
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Show Traction History'
                          '',
                          style: TextStyle(
                              fontSize: 15), // Adjust text style as needed
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Switch(
                            value: _switchValue,
                            onChanged: _handleSwitchChange,
                            activeColor:
                                _switchValue ? Color(0xFF351C82) : Colors.white,
                            inactiveTrackColor: Colors
                                .white, // Optional: Customize the track color when switch is off
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    if (_switchValue) // Conditionally display the image
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/wallet.png',
                            height: 200,
                            scale: 1.5,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              'No transactions yet. Begin transactions by funding your wallet '
                              '',
                              style: TextStyle(
                                  fontSize: 15), // Adjust text style as needed
                            ),
                          )
                        ],
                      )
                  ])
          )
      ),
    );
  }
}
