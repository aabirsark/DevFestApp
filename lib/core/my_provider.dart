import 'package:flutter/widgets.dart';

class DarkModeProvider with ChangeNotifier {
  bool _darkModeON = false;

  // ? getter of darkMode
  bool get darkMode => _darkModeON;

  // ? setter and state changer of this.class
  void changeDarkState() {
    _darkModeON = !_darkModeON;
    notifyListeners();
  }
}
