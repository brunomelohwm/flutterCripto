import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  late Box box; //late SharedPreferences _prefs;
  Map<String, String> locale = {
    'locale': 'pt-BR',
    'name': 'R\$',
  };

  AppSettings() {
    _startSettings();
  }

  _startSettings() async {
    await _startPreferences();
    await _readLocale();
  }

  Future<void> _startPreferences() async {
    box = await Hive.openBox('preferencias');
    //_prefs = await SharedPreferences.getInstance();
  }

  _readLocale() {
    final local = box.get('local') ?? 'pt_BR';
    final name = box.get('name') ?? 'R\$';
    locale = {
      'Locale': local,
      'name': name,
    };
    notifyListeners();
  }

  setLocale(String local, String name) async {
    await box.put('Local', local);
    await box.put('name', name);
    await _readLocale();
  }
}
