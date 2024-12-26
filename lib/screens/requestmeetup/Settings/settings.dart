import 'package:blayzeup/screens/requestmeetup/Profile/Home.dart';
import 'package:blayzeup/screens/requestmeetup/Settings/faqs.dart';
import 'package:blayzeup/screens/requestmeetup/Settings/persoonalinformationsettings.dart';
import 'package:flutter/material.dart';

import '../../../widgets/settingwidget.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height - 100,
                // width: double.infinity,
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Row(children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Settingshome()));
                          },
                          icon: Icon(Icons.arrow_back_outlined),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight
                                  .bold), // Adjust text style as needed
                        ),
                      ]),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          padding: EdgeInsets.all(16.0),
                          // Add padding inside the container
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            // Rounded corners
                            border: Border.all(
                              color: Color(0xFFD0D5DD), // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          child: Column(
                            children: [
                              Setings(title: 'Personal Information',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Persoonalinformationsettings(),
                                    ),
                                  );
                                },),
                              Setings(title: 'Location Services',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settingshome(),
                                    ),
                                  );
                                },),
                              Setings(title: 'Change Password',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settingshome(),
                                    ),
                                  );
                                },),
                              Setings(title: 'Referrals',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settingshome(),
                                    ),
                                  );
                                },),
                              Setings(title: 'Get Help',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settingshome(),
                                    ),
                                  );
                                },),
                              Setings(title: 'FAQS',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Faqs(),
                                    ),
                                  );
                                },),
                              Setings(title: 'Legals',
                                onIconPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Settingshome(),
                                    ),
                                  );
                                },),
                            ],
                          ))
                    ]))));
  }
}
