import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ready_for_tonsillectomy/locator.dart';
import 'package:ready_for_tonsillectomy/pages/hub_page.dart';
import 'package:ready_for_tonsillectomy/pages/hub_page_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/hub_page_younger.dart';
import 'package:ready_for_tonsillectomy/pages/hub_page_younger_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_after.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_after_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_before_a.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_before_a_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_before_b.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_before_b_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_of_surgery.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_day_of_surgery_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_fifth_day_after.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_fifth_day_after_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_second_day_after.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_second_day_after_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_tenth_day_after.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_tenth_day_after_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_week_after.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_week_after_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_week_before.dart';
import 'package:ready_for_tonsillectomy/pages/notification_page_week_before_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/operating_room_page.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_a.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_b.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_c.dart';
import 'package:ready_for_tonsillectomy/pages/what_are_tonsils_page.dart';
import 'package:ready_for_tonsillectomy/pages/healing_at_home_page.dart';
import 'package:ready_for_tonsillectomy/pages/after_surgery_page_a.dart';
import 'package:ready_for_tonsillectomy/pages/after_surgery_page_b.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_b.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_c.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_d.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_a.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_b.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_c.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_d.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_a.dart';
import 'package:ready_for_tonsillectomy/pages/parent_tips_page.dart';
import 'package:ready_for_tonsillectomy/pages/settings_page.dart';
import 'package:ready_for_tonsillectomy/pages/splash_screen.dart';
import 'package:ready_for_tonsillectomy/pages/splash_screen_spanish.dart';

import 'package:ready_for_tonsillectomy/pages/operating_room_page_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_a_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_b_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/going_to_sleep_page_c_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/what_are_tonsils_page_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/healing_at_home_page_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/after_surgery_page_a_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/after_surgery_page_b_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_b_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_c_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_d_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/getting_ready_page_a_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_b_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_c_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_d_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/why_surgery_page_a_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/parent_tips_page_spanish.dart';
import 'package:ready_for_tonsillectomy/pages/settings_page_spanish.dart';

import 'package:ready_for_tonsillectomy/services/analytics_services.dart';
import 'package:ready_for_tonsillectomy/services/awesome_notifications.dart';
import 'package:ready_for_tonsillectomy/services/navigation_service.dart';
import 'package:ready_for_tonsillectomy/services/notification_service.dart';
import 'package:ready_for_tonsillectomy/utils/constants.dart';
import 'package:ready_for_tonsillectomy/utils/prefs.dart';
import 'dart:async';
import 'firebase_options.dart';
import 'package:pendo_sdk/pendo_sdk.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

double screenWidth = 0;
double screenHeight = 0;

Future<void> main() async {
  String language;
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);
    };
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(!kDebugMode);
      return true;
    };

  PreferenceUtils.init();
  await NotificationController.initializeLocalNotifications();
  language = PreferenceUtils.getString("language") ?? "En";
  runApp(MyApp(language: language,));
}

class MyApp extends StatefulWidget {
  final String? language;
  const MyApp({Key? key, required this.language}) : super(key: key);

  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late dynamic homepage;
  @override
  void initState() {
    NotificationController.startListeningNotificationEvents();
    super.initState();
    initPendo();
    print(widget.language);
    switch(widget.language){
      case "En":
        homepage = PreferenceUtils.getTimestamp("DOS") != null ? HubPage() : const SplashScreen();
        break;
      case "Es":
        homepage = PreferenceUtils.getTimestamp("DOS") != null ? HubPageSpanish() : const SplashScreenSpanish();
        break;
    }
  }

  Future<void> initPendo() async {
    const String visitorId = '';
    const String accountId = 'Tonsillectomy-Testing';

    // Setup the Pendo SDK
    await PendoFlutterPlugin.setup(pendoKey);

    // Start a new session with an identified visitor
    PendoFlutterPlugin.startSession(visitorId, accountId, {},{});

    // Track an event that is happening in your application
    await PendoFlutterPlugin.track('Launch', {});
  }


  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    return MediaQuery(
        data: data.copyWith(textScaleFactor: 1.0),
    child: MaterialApp(
        navigatorKey: MyApp.navigatorKey,
        home: homepage,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: const [
        //   Locale('en'), // English
        //   Locale('es'), // Spanish
        // ],
        debugShowCheckedModeBanner: false,
        navigatorObservers: [
          locator<AnalyticsService>().getAnalyticsObserver()
        ],
        theme: ThemeData(),
        title: 'Ready for Surgery',
        routes: {
          '/splash_screen': (context) => const SplashScreen(),
          '/splash_screen_spanish': (context) => const SplashScreenSpanish(),

          '/notification_week_before': (context) => const NotificationPageWeekBefore(),
          '/notification_day_before_a': (context) => const NotificationPageDayBeforeA(),
          '/notification_day_before_b': (context) => const NotificationPageDayBeforeB(),
          '/notification_dos': (context) => const NotificationPageDOS(),
          '/notification_day_after': (context) => const NotificationPageDayAfter(),
          '/notification_second_day_after': (context) => const NotificationPageSecondDayAfter(),
          '/notification_fifth_day_after': (context) => const NotificationPageFifthDayAfter(),
          '/notification_week_after': (context) => const NotificationPageWeekAfter(),
          '/notification_tenth_day_after': (context) => const NotificationPageTenthDayAfter(),

          '/notification_week_before_spanish': (context) => const NotificationPageWeekBeforeSpanish(),
          '/notification_day_before_a_spanish': (context) => const NotificationPageDayBeforeASpanish(),
          '/notification_day_before_b_spanish': (context) => const NotificationPageDayBeforeBSpanish(),
          '/notification_dos_spanish': (context) => const NotificationPageDOSSpanish(),
          '/notification_day_after_spanish': (context) => const NotificationPageDayAfterSpanish(),
          '/notification_second_day_after_spanish': (context) => const NotificationPageSecondDayAfterSpanish(),
          '/notification_fifth_day_after_spanish': (context) => const NotificationPageFifthDayAfterSpanish(),
          '/notification_week_after_spanish': (context) => const NotificationPageWeekAfterSpanish(),
          '//notification_tenth_day_after_spanish': (context) => const NotificationPageTenthDayAfterSpanish(),

          '/hub': (context) => HubPage(),
          '/hub_younger': (context) => const HubPageYounger(),
          '/hub_older_spanish': (context) => HubPageSpanish(),
          '/hub_younger_spanish': (context) => const HubPageYoungerSpanish(),

          '/what_are_tonsils': (context) => const WhatAreTonsilsPage(),
          '/why_surgery_a': (context) => const WhySurgeryPageA(),
          '/why_surgery_b': (context) => const WhySurgeryPageB(),
          '/why_surgery_c': (context) => const WhySurgeryPageC(),
          '/why_surgery_d': (context) => const WhySurgeryPageD(),
          '/getting_ready_a': (context) => const GettingReadyPageA(),
          '/getting_ready_b': (context) => const GettingReadyPageB(),
          '/getting_ready_c': (context) => const GettingReadyPageC(),
          '/getting_ready_d': (context) => const GettingReadyPageD(),
          '/going_to_sleep_a': (context) => const GoingToSleepPageA(),
          '/going_to_sleep_b': (context) => const GoingToSleepPageB(),
          '/going_to_sleep_c': (context) => const GoingToSleepPageC(),
          '/operating_room': (context) => const OperatingRoomPage(),
          '/after_surgery_a': (context) => const AfterSurgeryPageA(),
          '/after_surgery_b': (context) => const AfterSurgeryPageB(),
          '/healing_at_home': (context) => const HealingAtHomePage(),
          '/parent_tips': (context) => const ParentTipsPage(),
          '/settings': (context) => const SettingsPage(),

          '/what_are_tonsils_spanish': (context) => const WhatAreTonsilsPageSpanish(),
          '/why_surgery_a_spanish': (context) => const WhySurgeryPageASpanish(),
          '/why_surgery_b_spanish': (context) => const WhySurgeryPageBSpanish(),
          '/why_surgery_c_spanish': (context) => const WhySurgeryPageCSpanish(),
          '/why_surgery_d_spanish': (context) => const WhySurgeryPageDSpanish(),
          '/getting_ready_a_spanish': (context) => const GettingReadyPageASpanish(),
          '/getting_ready_b_spanish': (context) => const GettingReadyPageBSpanish(),
          '/getting_ready_c_spanish': (context) => const GettingReadyPageCSpanish(),
          '/getting_ready_d_spanish': (context) => const GettingReadyPageDSpanish(),
          '/going_to_sleep_a_spanish': (context) => const GoingToSleepPageASpanish(),
          '/going_to_sleep_b_spanish': (context) => const GoingToSleepPageBSpanish(),
          '/going_to_sleep_c_spanish': (context) => const GoingToSleepPageCSpanish(),
          '/operating_room_spanish': (context) => const OperatingRoomPageSpanish(),
          '/after_surgery_a_spanish': (context) => const AfterSurgeryPageASpanish(),
          '/after_surgery_b_spanish': (context) => const AfterSurgeryPageBSpanish(),
          '/healing_at_home_spanish': (context) => const HealingAtHomePageSpanish(),
          '/parent_tips_spanish': (context) => const ParentTipsPageSpanish(),
          '/settings_spanish': (context) => const SettingsPageSpanish(),

        },
        onGenerateRoute: (settings) {
          switch (settings.name) {
            //English
            case "/notification_week_before":
                return MaterialPageRoute(builder: (context) => const NotificationPageWeekBefore());
            case "/notification_day_before_a":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayBeforeA());
            case "/notification_day_before_b":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayBeforeB());
            case "/notification_dos":
                return MaterialPageRoute(builder: (context) => const NotificationPageDOS());
            case "/notification_day_after":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayAfter());
            case "/notification_second_day_after":
                return MaterialPageRoute(builder: (context) => const NotificationPageSecondDayAfter());
            case "/notification_fifth_day_after":
                return MaterialPageRoute(builder: (context) => const NotificationPageFifthDayAfter());
            case "/notification_week_after":
                return MaterialPageRoute(builder: (context) => const NotificationPageWeekAfter());
            case "/notification_tenth_day_after":
                return MaterialPageRoute(builder: (context) => const NotificationPageTenthDayAfter());

            //Spanish
            case "/notification_week_before_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageWeekBeforeSpanish());
            case "/notification_day_before_a_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayBeforeASpanish());
            case "/notification_day_before_b_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayBeforeBSpanish());
            case "/notification_dos_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageDOSSpanish());
            case "/notification_day_after_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageDayAfterSpanish());
            case "/notification_second_day_after_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageSecondDayAfterSpanish());
            case "/notification_fifth_day_after_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageFifthDayAfterSpanish());
            case "/notification_week_after_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageWeekAfterSpanish());
            case "/notification_tenth_day_after_spanish":
                return MaterialPageRoute(builder: (context) => const NotificationPageTenthDayAfterSpanish());

                
            default: return MaterialPageRoute(builder: (context) => homepage);

          }
        },
        
        ));
  }
}