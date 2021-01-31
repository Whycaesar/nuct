import 'package:flutter/material.dart';
import 'package:nuct/routing/route_names.dart';
import 'package:nuct/widgets/navbar_item/navbar_item.dart';
import 'package:nuct/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Container(
            width: MediaQuery.of(context).size.width * 0.5 - 70,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavBarItem('HOME', HomeRoute),
                NavBarItem('ABOUT', AboutRoute),
                NavBarItem('PORTOFOLIO', PortofolioRoute),
                NavBarItem('SERVICES', ServicesRoute),
                NavBarItem('CONTACT', ContactRoute),
              ],
            ),
          )
        ],
      ),
    );
  }
}
