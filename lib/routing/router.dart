import 'package:flutter/material.dart';
import 'package:nuct/routing/route_names.dart';
import 'package:nuct/views/about/about_view.dart';
import 'package:nuct/views/contact/contact_view.dart';
import 'package:nuct/views/home/home_view.dart';
import 'package:nuct/views/portofolio/portofolio_view.dart';
import 'package:nuct/views/services/services_view.dart';
import 'package:nuct/extentions/string_extentions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  var routingData = settings.name.getRoutingData;
  switch (routingData.route) {
    case HomeRoute:
      return _getPageRoute(HomeView(), settings);
    case AboutRoute:
      return _getPageRoute(AboutView(), settings);
    case PortofolioRoute:
      return _getPageRoute(PortofolioView(), settings);
    case ServicesRoute:
      return _getPageRoute(ServicesView(), settings);
    case ContactRoute:
      return _getPageRoute(ContactView(), settings);
    default:
      return _getPageRoute(HomeView(), settings);
  }
}

// PageRoute _getPageRoute(Widget child) {
//   return MaterialPageRoute(builder: (context) => child);
// }

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
