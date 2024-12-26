import 'package:flutter/material.dart';
import 'package:blayzeup/screens/Login/verifypage.dart';

class signupp extends StatefulWidget {
  const signupp({super.key});

  @override
  State<signupp> createState() => _signuppState();
}

class _signuppState extends State<signupp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child:  SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                ],
              ),
              Column(
                children: <Widget>[
                  Column(children: [
                    Container(
                        padding: EdgeInsets.only(right: 280, bottom: 10),
                        child: const Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "John Doe",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2
                              )),
                          fillColor: Colors.white.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person)),
                    )
                  ]),
                  const SizedBox(height: 20),
                  Column(children: [
                    Container(
                        padding: EdgeInsets.only(right: 320, bottom: 10),
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2
                              )),
                          fillColor: Colors.white.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.email)),
                    )
                  ]),
                  const SizedBox(height: 20),
                  Column(children: [
                    Container(

                        padding: EdgeInsets.only(right: 290, bottom: 10),
                        child: const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.black,
                                width: 2
                            )),
                        fillColor: Colors.white.withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.password),
                      ),
                      obscureText: true,
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("By signing up, you agree to blayzeup"),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Terms Condition",
                            style: TextStyle(color: Color(0xFF351C82)),
                          ))
                    ],
                  )),
              Container(
                  padding: const EdgeInsets.only(top: 30, left: 3),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed callback logic here
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Verifypaage()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF351C82), // Text color

                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(8), // Button border radius
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15), // Adjust padding as needed
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 15), // Adjust text style as needed
                      ),
                    ),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Already have an account?"),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

