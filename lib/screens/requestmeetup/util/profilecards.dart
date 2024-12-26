import 'package:flutter/material.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

class profilecards extends StatelessWidget {
  final String assetPath; // Changed to String to hold the image asset path

  profilecards({required this.assetPath});
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return  Swipable(
      child: Stack(
        children: [
          // Image container, placed at the bottom
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(assetPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Indicator bar container, placed on top
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 40, // Height of the indicator bar container
            child: Container(
              color: Colors.transparent, // Background color of the indicator bar container
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIndicatorLine(),
                    SizedBox(width: 10), // Space between lines
                    _buildIndicatorLine(),
                    SizedBox(width: 10), // Space between lines
                    _buildIndicatorLine(),
                    SizedBox(width: 10), // Space between lines
                    _buildIndicatorLine(),
                    SizedBox(width: 10), // Space between lines
                    _buildIndicatorLine(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicatorLine() {
    return Container(
      width: 80, // Width of each line
      height: 4, // Thickness of each line
      color: Colors.black, // Color of each line
    );
  }
}