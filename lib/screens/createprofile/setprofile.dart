import 'package:flutter/material.dart';
import 'package:blayzeup/screens/createprofile/setprrofile1.dart';
import 'package:blayzeup/screens/createprofile/setprofile2.dart';
import 'package:blayzeup/screens/createprofile/setprofile3.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:blayzeup/widgets/EnableLocation.dart';
import 'package:blayzeup/screens/requestmeetup/Home/home.dart';

import '../requestmeetup/HomeNavigation.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  int activeStep = 0;

  Widget? getStepScreen(int step) {
    switch (step) {
      case 0:
        return const Expanded(child: setprofile1());
      case 1:
        return const Expanded(child: SetProfile2());
      case 2:
        return const Expanded(child: setprofile3());
      default:
        return Location();
    }
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 80.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 70, height: 50,
                    child: activeStep > 0 ? IconButton(
                      padding: EdgeInsets.only(top: -50),
                      onPressed: () {
                        if (activeStep > 0) {
                          setState(() {
                            activeStep--;
                          });
                        } else {
                          // Handle action when already at the first step
                        }
                      },
                      icon: Icon(Icons.arrow_back),
                    ) : null,
                  ),

                  Expanded(
                    child:Container(
                  height: 50,
                      child: EasyStepper(
                      activeStep: activeStep,
                      lineStyle: LineStyle(
                        finishedLineColor: Color(0xFFEC4A23),
                        defaultLineColor: Colors.white,
                        lineLength: 70,
                        lineSpace: 0,
                        lineType: LineType.normal,
                      ),
                      activeStepTextColor: Colors.black87,
                      finishedStepTextColor: Colors.black87,
                      internalPadding: 0,
                      showLoadingAnimation: false,
                      stepRadius: 8,
                      showStepBorder: false,
                      steps: List.generate(
                        3,
                            (index) => EasyStep(
                          customStep: Stack(
                            children: [
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: activeStep >= index
                                      ? Color(0xFFEC4A23)
                                      : Colors.white,
                                  child: activeStep >= index
                                      ? Icon(Icons.check,
                                      size: 10, color: Colors.white)
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onStepReached: (index) {
                        setState(() {
                          activeStep = index;
                        });
                      },
                    ),
                  ),
                  )
                ],
              ),
              if (getStepScreen(activeStep) != null) ...[
                Expanded(child: getStepScreen(activeStep)!),
                ElevatedButton(
                  onPressed: () {
                    if (activeStep < 2) {
                      setState(() {
                        activeStep++;
                      });
                    } else {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const BottomNavigationBarExampleApp()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color(0xFF351C82), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      activeStep < 2 ? 'Next' : 'Finish',
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

}
