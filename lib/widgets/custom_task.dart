import 'package:flutter/material.dart';

class CustomTask extends StatelessWidget {
  const CustomTask(
      {super.key,
      required this.iconBackgroundColor,
      required this.iconColor,
      required this.icon,
      required this.headingText,
      required this.headingTextColor,
      required this.contentHeadingText,
      required this.contentText});

  final Color iconBackgroundColor;
  final Color iconColor;
  final IconData icon;
  final String headingText;
  final Color headingTextColor;
  final String contentHeadingText;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: Row(
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  width: 225,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 225 / 2,
                          height: 150,
                          decoration: BoxDecoration(
                              color: iconBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(75),
                                  bottomLeft: Radius.circular(75),
                                  bottomRight: Radius.circular(75))),
                          child: Center(
                              child: Icon(
                            icon,
                            color: iconColor,
                            size: 75,
                          ))),
                      Center(
                        child: Text(
                          headingText,
                          style: TextStyle(
                              fontSize: 75,
                              color: headingTextColor,
                              letterSpacing: 1.5),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 2.5),
                    Text(
                      contentHeadingText,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      contentText,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 25),
        ],
      ),
    );
  }
}
