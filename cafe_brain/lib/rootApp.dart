import 'package:flutter/material.dart';

import 'package:cafe_brain/pages/calendar_screen.dart';
import 'package:cafe_brain/pages/quickThoughts_screen.dart';
import 'package:cafe_brain/pages/notifications_screen.dart';
import 'package:cafe_brain/pages/toDo_screen.dart';
import 'package:cafe_brain/pages/home_screen.dart';
import 'package:provider/provider.dart';


/// The root widget in the app widget hierarchy.

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [],
        child: Builder(builder: (BuildContext context) {
          return MaterialApp(

            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/home':
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => const HomeScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  );

                case '/calendar':
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => const CalendarScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  );
                case '/quickThoughts':
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => const QuickThoughtsScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  );
                case '/notifications':
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => const NotificationsScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  );
                     case '/toDo':
                  return PageRouteBuilder(
                    settings: settings,
                    pageBuilder: (_, __, ___) => const ToDoScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  );
                default:
                  return null;
              }
            },
            initialRoute: '/home',
            //navigatorKey: navigatorKey,
          );
        }));
  }
}
