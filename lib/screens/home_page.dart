import 'package:flutter/material.dart';
import 'package:multitheme/provider/theme_provider.dart';

import 'package:multitheme/widget/change_theme_button.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Themes'),
        actions: [
          ChangeThemeButton(),
        ],
      ),
      body: Center(
        child: Text(
          'This is the $text',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
