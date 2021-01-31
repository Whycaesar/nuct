import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuct/views/portofolio/portofolio_view_mobile.dart';
import 'package:nuct/views/portofolio/portofolio_view_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PortofolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PortofolioViewMobile(),
      desktop: PortofolioViewTabletDesktop(),
    );
  }
}
