import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuct/views/about/about_view_mobile.dart';
import 'package:nuct/views/about/about_view_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewMobile(),
      desktop: AboutViewTabletDesktop(),
    );
  }
}
