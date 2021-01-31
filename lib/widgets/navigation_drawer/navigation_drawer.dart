import 'package:flutter/material.dart';
import 'package:nuct/routing/route_names.dart';
import 'package:nuct/widgets/navigation_drawer/drawer_item.dart';
import 'package:nuct/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('ABOUT', Icons.info_outline_rounded, AboutRoute),
          DrawerItem('PORTOFOLIO', Icons.face, PortofolioRoute),
          DrawerItem('SERVICES', Icons.supervised_user_circle, ServicesRoute),
          DrawerItem('CONTACT', Icons.contacts_sharp, ContactRoute)
        ],
      ),
    );
  }
}
