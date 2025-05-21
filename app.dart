import 'package:flutter/material.dart';
import 'package:shakhes_fear_greed/home.dart';
import 'package:shakhes_fear_greed/settings.dart';

class ShakhesApp extends StatelessWidget {
  const ShakhesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'شاخص ترس و طمع',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
      routes: {
        '/settings': (_) => const SettingsPage(),
      },
    );
  }
}
