import 'package:blayzeup/screens/requestmeetup/Settings/settings.dart';
import 'package:flutter/material.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
     title: Column(
        children: [
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
              'FAQS',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                  FontWeight.bold), // Adjust text style as needed
            ),
          ]),
        ],
      ),
    ),
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height - 100,
        child: Column(children: <Widget>[
          SizedBox(
            height: 20,
          ),

          Column(
            children: [
              Text(
                  'Welcome to the BlayzeUp FAQ section! Here, we address common questions to help you better understand our paid hook-up app. If you have any further questions',
              style: TextStyle(fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Transform.translate(
                offset: Offset(-120, 0),
                child: Text(
                  '1. What is BlayzeUp?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                          FontWeight.bold,
                      color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'BlayzeUp is a unique dating platform that connects users for paid meet-ups. It allows users to fund their wallet, pay a booking fee, select a date for the meet-up, and unlock chat features to communicate with their match.'),
              SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(-100, 0),
                child: Text(
                  '2. Is BlayzeUp free to use?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                  color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'BlayzeUp is free to download and browse. However, to request a meet-up, you need to fund your wallet and pay a booking fee.'),
              SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(-100, 0),
                child: Text(
                  '3. How do I fund my wallet?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                      color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'To fund your wallet, go to your account settings and select “Wallet.” Choose the amount you want to add, select your payment method, and follow the prompts to complete the transaction.'),
              SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(-50, 0),
                child: Text(
                  '4. What payment methods are accepted?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                      color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'We accept various payment methods, including credit/debit cards and other secure payment options as displayed in the app’s wallet section.'),
              SizedBox(
                height: 30,
              ),
              Transform.translate(
                offset: Offset(-40, 0),
                child: Text(
                  '5. When can I start chatting with my match?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                      color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'You can start chatting with your match once you have paid the booking fee. The chat feature will be unlocked immediately after the payment is processed'),
              SizedBox(height: 30,),
              Transform.translate(
                offset: Offset(-40, 0),
                child: Text(
                  '6. What happens if my meet-up is canceled?',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight:
                      FontWeight.bold,
                      color: Color(0xFF241359)), // Adjust text style as needed
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'If a meet-up is canceled, please contact our support team at [Support Email Address] for assistance. Refunds or rescheduling will be handled on a case-by-case basis according to our cancellation policy.'),
            ],
          ),
        ]),
      ),
      Transform.translate(
        offset: Offset(0, -50),
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: <Widget>[
SizedBox(height: 50,),
              Column(
                children: [
                  Transform.translate(
                    offset: Offset(5, 0),
                    child: Text(
                      '7. What should I do if I encounter inappropriate behavior?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold,
                          color: Color(0xFF241359)), // Adjust text style as needed
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'If you encounter inappropriate behavior, please report it immediately through the app’s reporting feature or contact our support team at [Support Email Address]. We take such reports seriously and will take appropriate action.')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Transform.translate(
                    offset: Offset(-40, 0),
                    child: Text(
                      '8. How do I change my account information?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold,
                          color: Color(0xFF241359)), // Adjust text style as needed
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'To change your account information, go to your account settings and select “Edit Profile.” You can update your personal details, profile picture, and other information as needed.')
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Transform.translate(
                    offset: Offset(-60, 0),
                    child: Text(
                      '9. How do I contact BlayzeUp support?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                          FontWeight.bold,
                          color: Color(0xFF241359)), // Adjust text style as needed
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'For any questions or support, please contact us at [Support Email Address]. Our team is here to help and will respond as quickly as possible.')
                ],
              ),
              SizedBox(height: 30,),
              Column(
                children: [
                  Text(
                      'Thank you for using BlayzeUp! We hope you have a great experience connecting with new people')
                ],
              ),
            ])),
      ),
    ])));
  }
}
