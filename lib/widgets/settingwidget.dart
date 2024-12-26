import 'package:flutter/material.dart';

class Setings extends StatelessWidget {
  final String title;
  final VoidCallback onIconPressed;
  final Color iconColor;
  final Color lineColor;

  const Setings({
    Key? key,
    required this.title,
    required this.onIconPressed,
    this.iconColor = const Color(0xFFD0D5DD),
    this.lineColor = const Color(0xFFD0D5DD),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            IconButton(
              onPressed: onIconPressed,
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: iconColor,
                size: 20,
              ),
            ),
          ],
        ),
        Divider(
          color: lineColor, // Line color
          indent: 10, // Space to the left of the line
          endIndent: 10, // Space to the right of the line
        ),
      ],
    );
  }
}
