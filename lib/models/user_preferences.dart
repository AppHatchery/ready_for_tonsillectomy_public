import 'package:flutter/foundation.dart';

class UserPreferences with ChangeNotifier {
  bool _isLanguageSelected = false;
  bool _isAgeSelected = false;


  bool get isLanguageSelected => _isLanguageSelected;
  bool get isAgeSelected => _isAgeSelected;


 // allow only one selection at a time
  void setLanguageSelected() {
    _isLanguageSelected = !_isLanguageSelected;
    notifyListeners();
  }



  void setAgeSelected() {
    _isAgeSelected = !_isAgeSelected;
    notifyListeners();
  }

}