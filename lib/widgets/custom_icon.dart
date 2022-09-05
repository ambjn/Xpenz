import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.fontAwesomeIcons,
      required this.iconText,
      required this.iconColor});
  final IconData fontAwesomeIcons;
  final Color iconColor;
  final String iconText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(50)),
              height: 75,
              width: 75,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    fontAwesomeIcons,
                    size: 40,
                    color: iconColor,
                  )),
            ),
            const SizedBox(height: 15),
            Text(
              iconText,
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ],
    );
  }
}
