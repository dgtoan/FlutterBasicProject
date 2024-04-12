import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1 Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Home'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page1/detail'),
              child: const Text('Detail'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page2'),
              child: const Text('Page 2'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/error'),
              child: const Text('Error'),
            ),
          ],
        ),
      ),
    );
  }
}