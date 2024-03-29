import 'package:flutter/material.dart';
import 'package:nuct/widgets/centered_view/centered_view.dart';
import 'package:nuct/widgets/navigation_bar/navigation_bar.dart';
import 'package:nuct/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: child,
              ),
            ],
          ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
