import 'package:flutter/material.dart';
import 'package:nuct/constant/app_color.dart';
import 'package:nuct/locator.dart';
import 'package:nuct/routing/route_names.dart';
import 'package:nuct/service/navigation_service.dart';

class NavigationDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: Image.asset(
              'assets/drawerHeader.jpg',
              height: 150,
              width: 300,
            ),
            onTap: () {
              locator<NavigationService>().navigateTo(HomeRoute);
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
