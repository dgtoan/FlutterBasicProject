
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nav_basic/screens/error_screen.dart';
import 'package:nav_basic/screens/home_screen.dart';
import 'package:nav_basic/screens/page1_detail_screen.dart';
import 'package:nav_basic/screens/page1_screen.dart';
import 'package:nav_basic/screens/page2_screen.dart';

const String homeScreen = '/';
const String page1Screen = '/page1';
const String page2Screen = '/page2';
const String page1DetailScreen = 'detail';

final GoRouter appRouter = GoRouter(
  initialLocation: homeScreen,
  routes: [
    GoRoute(
      path: homeScreen,
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
    ),
    GoRoute(
      path: page1Screen,
      pageBuilder: (context, state) => const MaterialPage(child: Page1Screen()),
      routes: [
        GoRoute(
          path: page1DetailScreen,
          pageBuilder: (context, state) => const MaterialPage(child: Page1DetailScreen())
        )
      ]
    ),
    GoRoute(
      path: page2Screen,
      pageBuilder: (context, state) => const MaterialPage(child: Page2Screen()),
    ),
  ],
  errorPageBuilder: (context, state) => const MaterialPage(
    child: ErrorScreen(),
  )
);