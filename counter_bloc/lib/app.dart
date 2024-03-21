import 'package:flutter/material.dart';
import 'package:counter_bloc/counter/view/counter_page.dart';

class CounterApp extends MaterialApp {
  @override
  bool get debugShowCheckedModeBanner => false;
  
  const CounterApp({super.key}) : super(home: const CounterPage());
}