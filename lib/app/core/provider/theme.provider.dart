import 'package:consumer_app/app/core/constants/app_color.dart';
import 'package:consumer_app/app/core/constants/app_theme.dart';
import 'package:consumer_app/app/data/interface/interface.dart';
import 'package:flutter/material.dart';

enum ThemeType { light, dark }

class ThemeProvider extends ChangeNotifier {
  ThemeType _type = ThemeType.dark;

  toggleTheme() {
    if (_type != ThemeType.light) {
      _type = ThemeType.light;
    } else {
      _type = ThemeType.dark;
    }

    return notifyListeners();
  }

  ThemeData getCurrentTheme() =>
      _type == ThemeType.dark ? AppTheme().dark : AppTheme().light;

  ThemeColors getColors() => AppThemeColor(_type).getColors();
}
