import 'package:flutter/material.dart';
void modalsheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          //  height: MediaQuery.of(context).size.height * 50,
          // width: MediaQuery.of(context).size.height * 50,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){}, icon: ImageIcon(
                      AssetImage('assets/images/close.png'), // Replace with your image path
                      size: 24, // Adjust icon size as needed
                      color: Colors.black, // Optional: set color of the icon
                    ),)
                  ],),

                Center(child:  Text(
                  'Request Meet up',
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold), // Adjust text style as needed
                ),),
                SizedBox(height: 20,),
                Center(child:  Text(
                  'To continue with your meet-up request, please fund your wallet to pay booking fee of ₦30,000',
                  style: TextStyle(
                    fontSize: 15, ), // Adjust text style as needed
                ),),
                SizedBox(height: 30,),
                Container(
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed callback logic here
                        // Navigator.pushReplacement(context,
                        //     MaterialPageRoute(builder: (context) => Sigup()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                        Color(0xFF351C82), // Text color

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
          ),
        );
      });
}
