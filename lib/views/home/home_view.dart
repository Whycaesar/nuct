import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuct/views/home/home_content_desktop.dart';
import 'package:nuct/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
    // return Container(
    //   child: Center(
    //     child: Text('ini Home'),
    //   ),
    // );
  }
}
