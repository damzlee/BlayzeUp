import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class setprofile3 extends StatefulWidget {
  const setprofile3({super.key});

  @override
  State<setprofile3> createState() => _setprofile3State();
}
class _setprofile3State extends State<setprofile3> {

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
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(children: [
                    Text(
                      "Upload Your Picture",
                      style:
                          TextStyle(fontSize: 30,
                              fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Your picture help others get to know you better and increase your chances of having your request accepted",
                      style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                      textAlign: TextAlign.center,

                    ),
                    const SizedBox(height: 40),
                    // _image != null
                    //     ? Image.file(_image!)
                    //     : Icon(Icons.image, size: 100.0, color: Colors.grey),
          Container(
            padding: const EdgeInsets.only(top: 30, left: 3),
            color: Color(0xFFF9F5FF), // Background color of the Container
            child: DottedBorder(
              color: Color(0xFF351C82),
              dashPattern: [18, 8],
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              padding: EdgeInsets.all(100),
              child: Padding(
                padding: EdgeInsets.all(16), // Padding inside the ElevatedButton
                child: ElevatedButton(
                  onPressed: () {
                    // Add your onPressed callback logic here
                    _getImageFromGallery;
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF351C82), // Background color of ElevatedButton
                    shape: CircleBorder(), // Making the button round
                    padding: EdgeInsets.all(16), // Padding inside the ElevatedButton
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20, // Size of the icon
                    color: Colors.white, // Color of the icon
                  ),
                ),
              ),
            ),
          ),

                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
