import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

/// An event quickThoughts for Hendrix Today.
///
/// This page displays a quickThoughts that shows how many events are happening on
/// any given day and a list of the specific events happening on a selected day.
class QuickThoughtsScreen extends StatefulWidget {
  const QuickThoughtsScreen({super.key});

  @override
  State<QuickThoughtsScreen> createState() => _QuickThoughtsScreenState();
}

class _QuickThoughtsScreenState extends State<QuickThoughtsScreen> {
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
          "QuickThoughts",
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
      body: Column(

      ),
 

    );
  }
}

// all of this will change. olivia is doing this.
