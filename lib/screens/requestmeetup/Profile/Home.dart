import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../Modals/settingshomeModal.dart';
import '../HomeNavigation.dart';
import '../Settings/settings.dart';

class Settingshome extends StatefulWidget {
  const Settingshome({super.key});

  @override
  State<Settingshome> createState() => _HomeState();
}

class _HomeState extends State<Settingshome> {
  File? _image;

  Future<void> _getImageFromGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

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
                      Row( children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BottomNavigationBarExampleApp()));
                          },
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            size: 20, // Size of the icon
                            color: Colors.black, // Color of the icon
                          ),
                        ),
                       Spacer(),
                      Text(
                            'Profile',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight
                                    .bold), // Adjust text style as needed
                          ),

                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            // Action to be performed on tap
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const settings()));
                          },
                          child: Image.asset(
                            'assets/images/setting.png',
                            height: 28,
                            scale: 1.5,
                          ),
                        )
                      ]),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/2ndpage.png',
                            width: 142,
                            height: 142,
                            fit: BoxFit
                                .cover, // Ensure the image covers the entire circle
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'YourPleasurelover, 25',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight
                                  .bold), // Adjust text style as needed
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Text(
                              'Not here for a long time, just a good time',
                              style: TextStyle(
                                fontSize: 14,
                              ), // Adjust text style as needed
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              modalsheet(context);
                            },
                            icon: Icon(Icons.edit),
                            color: Color(0xFFD0D5DD),
                          )
                        ],
                      )),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: Image.asset(
                              'assets/images/2ndpage.png',
                              height: 150,
                              scale: 5,
                            ),
                          ),
                          // Adjust text style as needed

                          Container(
                            child: Image.asset(
                              'assets/images/2ndpage.png',
                              height: 150,
                              scale: 5,
                            ),
                          )
                        ],
                      )),
                      Spacer(),
                      Center(
                          child:Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF6D6290), // Background color
                              shape: BoxShape.circle, // Make the container round
                            ),
                            child: IconButton(
                              onPressed: () {
                                // Action to be performed on button press
                                _getImageFromGallery();
                              },
                              icon: Icon(
                                Icons.add,
                                size: 20, // Size of the icon
                                color: Colors.white, // Color of the icon
                              ),
                            ),
                          ),
                      ),

                    ]))));
  }
}
