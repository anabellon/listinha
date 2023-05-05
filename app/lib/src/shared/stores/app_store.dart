import 'package:flutter/material.dart';

class AppStore {
  // classe de gerenciamento de estado

  final themeMode = ValueNotifier(ThemeMode.system);
  final syncDate = ValueNotifier<DateTime?>(null);

  AppStore();

  void init() {}

  void save() {
    //TODO: Salvar dados na base local utilizando realm
  }

  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode.value = mode;
      save();
    }
  }

  void setSyncDate(DateTime date) {
    syncDate.value = date;
    save();
  }
}
