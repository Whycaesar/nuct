import 'package:flutter/material.dart';

class AboutTitle extends StatelessWidget {
  final String title;

  const AboutTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
