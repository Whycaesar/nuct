import 'package:flutter/material.dart';

class AboutDetails extends StatelessWidget {
  final String description;

  const AboutDetails(this.description);
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 12,
        height: 1.5,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
