import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier {
  static AppController instance =
      AppController(); // usar a mesma instancia para AppWidget e HomeScreen

  bool isDarkTheme = false;

  // método para alterar o tema
  changeTheme() {
    isDarkTheme = !isDarkTheme; // modifica o tema
    notifyListeners();
  }
}
