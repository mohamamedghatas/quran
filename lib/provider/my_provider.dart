import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MYprovider  extends ChangeNotifier{
  ThemeMode apptheme=ThemeMode.light;
  changeTheme(ThemeMode themeMode){
    apptheme=themeMode;
    notifyListeners();
  }

}