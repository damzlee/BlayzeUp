import 'package:flutter/material.dart';
import 'package:blayzeup/screens/Login/tab1.dart';
import 'package:blayzeup/screens/Login/tab2.dart';

class Sigup extends StatefulWidget {
  const Sigup({super.key});

  @override
  State<Sigup> createState() => _SigupState();
}

class _SigupState extends State<Sigup> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                    children: [
                      const SizedBox(height: 80.0),
                      Text(
                        "Create Account",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Join blazyzeup in just a few easy steps",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        //height: 50,
                        width: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
              color: Colors.white,
              //borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Color(0xFF351C82),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    tabs: [
                      Tab(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 16, // Font size
                            ),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Log in',
                            style: TextStyle(
                              fontSize: 16, // Font size
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                        ),
                      ),

                    Expanded(child:    TabBarView(
                          controller: _tabController,
                          children: [
                            const Expanded(child: signupp()),
                            const Expanded(child: Login()),
                          ],
                        ),
                    )
                    ],
                  ),
            )
        )
    );
  }
}
