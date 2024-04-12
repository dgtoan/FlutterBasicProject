import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 2 Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Home'),
            ),
            ElevatedButton(
              onPressed: () => context.go('/page1'),
              child: const Text('Page 1'),
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