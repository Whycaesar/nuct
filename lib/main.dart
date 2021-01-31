import 'package:flutter/material.dart';
import 'package:nuct/locator.dart';
import 'package:nuct/routing/router.dart';
import 'package:nuct/service/navigation_service.dart';
import 'package:nuct/views/layout_template/layout_template.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nuct Playground',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Roboto',
              )),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      // initialRoute: HomeRoute,
      // home: LayoutTemplate(),
      // Navigator(
      //             key: locator<NavigationService>().navigatorKey,
      //             onGenerateRoute: generateRoute,
      //             initialRoute: HomeRoute,
      //           ),
    );
  }
}
