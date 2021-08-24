import 'package:flutter/material.dart';

import 'package:multitheme/provider/theme_provider.dart';
import 'package:multitheme/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Light & Dark Theme',
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: HomePage(),
    );
  }
}
