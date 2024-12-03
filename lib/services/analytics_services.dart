import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getAnalyticsObserver() =>
      FirebaseAnalyticsObserver(analytics: _analytics);

  Future<void> setUserProperties(String userId) async {
    await _analytics.setUserId(id: userId);
  }

  Future<void> setScreenName(String screenName) async {
    await _analytics.logScreenView(screenClass: screenName);
  }

}