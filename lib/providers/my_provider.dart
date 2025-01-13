import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/bottom_sheets/language_bottomssheet.dart';

class MyProvider extends ChangeNotifier{

ThemeMode mode=ThemeMode.light;


ChangeTheme(ThemeMode themeMode){
  mode=themeMode;
  notifyListeners();


}


}