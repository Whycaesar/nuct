import 'package:flutter/material.dart';

class HomeDetails extends StatelessWidget {
  final String artis;
  final String description;

  const HomeDetails(this.artis, this.description);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            artis,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              height: 1.1,
              // backgroundColor: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              letterSpacing: 0.4,
              fontSize: 14,
              height: 1.7,
              // backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
