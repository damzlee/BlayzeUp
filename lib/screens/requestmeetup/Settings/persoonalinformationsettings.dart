import 'package:blayzeup/screens/requestmeetup/Settings/settings.dart';
import 'package:flutter/material.dart';

import '../../../widgets/personalInfowidget.dart';
import '../../Modals/EditDisplayNameModal.dart';
import '../../Modals/EditEmailModal.dart';
import '../../Modals/EditPhoneModal.dart';
import '../../Modals/NameChangeModal.dart';

class Persoonalinformationsettings extends StatefulWidget {
  const Persoonalinformationsettings({super.key});

  @override
  State<Persoonalinformationsettings> createState() =>
      _PersoonalinformationsettingsState();
}

class _PersoonalinformationsettingsState
    extends State<Persoonalinformationsettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height - 100,
                child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Column(children: [
                        Row(children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const settings()));
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
                                fontWeight: FontWeight.bold), // Adjust text style as needed
                          ),
                        ]),
                      ],),


                      SizedBox(
                        height: 30,
                      ),
                      Transform.translate(
                        offset: Offset(-150, 0),
                        child: Text(
                          'Personal Info',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight
                                  .w400), // Adjust text style as needed
                        ),
                      ),
                      SizedBox(
                        height: 10,
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
                              PersonalInfor(title: 'Full Name',
                                subtitle: 'John Doe',
                                onIconPressed: () {
                                  modalsheet(context);
                                },),
                              SizedBox(height:2),
                              PersonalInfor(title: 'Display Name',
                                subtitle: '@JohnDoe',
                                onIconPressed: () {
                                  DisplayNamemodalsheet(context);
                                },),
                              SizedBox(height:2),
                              PersonalInfor(title: 'Email',
                                subtitle: 'JohnDoe@gmail.com',
                                onIconPressed: () {
                                  Emailmodalsheet(context);
                                },),
                              SizedBox(height:2),
                              PersonalInfor(title: 'Phone Number',
                                subtitle: '+2349031695555',
                                onIconPressed: () {
                                  PhoneNumbermodalsheet(context);
                                },),
                              SizedBox(height:2),
                              PersonalInfor(title: 'Date of Birth',
                                subtitle: '9/052024',
                                onIconPressed: () {
                                  // Navigator.pushReplacement(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => const Settingshome(),
                                  //   ),
                                  // );
                                },),
                            ],
                          ))
                    ]))));
  }
}
