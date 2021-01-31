import 'package:get_it/get_it.dart';
import 'package:nuct/service/api.dart';
import 'package:nuct/service/navigation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
