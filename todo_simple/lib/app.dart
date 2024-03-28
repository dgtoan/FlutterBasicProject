import 'package:flutter/material.dart';
import 'package:todo_simple/color_schemes.dart';
import 'package:todo_simple/todo/view/todo_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Simple',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const Todo(),
    );
  }
}