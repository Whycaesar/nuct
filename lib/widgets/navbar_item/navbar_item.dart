import 'package:flutter/material.dart';
import 'package:nuct/datamodels/navbar_item_model.dart';
import 'package:nuct/locator.dart';
import 'package:nuct/service/navigation_service.dart';
import 'package:nuct/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:nuct/widgets/navbar_item/navbar_item_tablet_desktop.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData icon;

  const NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );

    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
        Scaffold.of(context).openEndDrawer();
      },
      // child: Container(
      child: Provider.value(
          value: model,
          child: ScreenTypeLayout(
            tablet: NavBarItemTabletDesktop(),
            mobile: NavBarItemMobile(),
          )),
      // ),
    );
  }
}
