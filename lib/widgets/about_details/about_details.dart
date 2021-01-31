import 'package:flutter/material.dart';

class AboutDetails extends StatelessWidget {
  final String title;
  final String description;

  const AboutDetails(this.title, this.description);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.35 - 70,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.65 - 70,
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 12,
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
