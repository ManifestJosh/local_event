import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../model/events.dart';
import 'eventdetails_background.dart';
import 'eventdetails_content.dart';

class Eventsdetails extends StatelessWidget {
  final Event event;

  const Eventsdetails({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<Event>.value(
        value: event,
        child: const Stack(
          fit: StackFit.expand,
          children: <Widget>[EventdetailBackground(), EventsdetailsContent()],
        ),
      ),
    );
  }
}
