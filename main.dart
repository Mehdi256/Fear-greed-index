import 'package:flutter/material.dart';
import 'package:shakhes_fear_greed/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SettingsService.init();
  runApp(const ShakhesApp());
}
