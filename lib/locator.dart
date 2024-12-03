 import 'package:get_it/get_it.dart';
import 'package:ready_for_tonsillectomy/services/analytics_services.dart';

GetIt locator = GetIt.instance;


void setupLocator() {
  locator.registerLazySingleton(() => AnalyticsService());
}