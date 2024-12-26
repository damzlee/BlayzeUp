import 'package:flutter/material.dart';

class PersonalInfor extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onIconPressed;
  final Color iconColor;
  final Color lineColor;

  const PersonalInfor({
    Key? key,
    required this.title,
    required this.subtitle,
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onIconPressed,
              icon: Icon(
                Icons.edit,
                color: iconColor,
                size: 20,
              ),
            ),
          ],
        ),
        Divider(
          color: lineColor, // Line color
          indent: 1, // Space to the left of the line
          endIndent: 1, // Space to the right of the line
        ),
      ],
    );
  }
}