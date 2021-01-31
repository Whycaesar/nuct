import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PortofolioDetails extends StatelessWidget {
  final String title;
  final String description;
  final String urlPortofolio;

  const PortofolioDetails(this.title, this.description, this.urlPortofolio);

  Future<void> _launchURL() async {
    if (await canLaunch(urlPortofolio)) {
      await launch(urlPortofolio);
    } else {
      throw 'Could not launch $urlPortofolio';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 400,
          child: GestureDetector(
            onTap: _launchURL,
            child: Image.asset(
              title,
              fit: BoxFit.fill,
            ),
          ),
        ),

        // SizedBox(
        //   height: 20,
        // ),
        Container(
          // color: Colors.red,
          height: 50,
          width: MediaQuery.of(context).size.width * 1 - 70,
          child: Align(
            alignment: Alignment.centerLeft,
            // child: Center(
            child: Text(
              description,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 14,
                // height: 3,
                // backgroundColor: Colors.yellowAccent,
              ),
            ),
            // ),
          ),
        ),
      ],
    );
  }
}
