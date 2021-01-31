import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 100,
      child: Image.asset(
        'assets/logo.png',
        color: Colors.black,
      ),
    );
  }
}