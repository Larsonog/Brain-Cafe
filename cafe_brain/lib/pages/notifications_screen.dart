import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

/// An event Notifications for Hendrix Today.
///
/// This page displays a Notifications that shows how many events are happening on
/// any given day and a list of the specific events happening on a selected day.
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  /// The day for which to show events; defaults to [DateTime.now].
  DateTime _selectedDay = DateTime.now();

  void _updateSelectedDay(DateTime newSelectedDay) {
    setState(() {
      _selectedDay = newSelectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: Column(

      ),
 

    );
  }
}

// all of this will change. olivia is doing this.
