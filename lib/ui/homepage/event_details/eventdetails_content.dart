import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:local_event/styleguide.dart';
import '../../../model/events.dart';

class EventsdetailsContent extends StatelessWidget {
  const EventsdetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    final event = Provider.of<Event>(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.2,
            ),
            child: Text(
              event.title,
              style: eventWhiteTitleTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.24,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "-",
                  style: eventLocationTextStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  event.location,
                  style: eventLocationTextStyle.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
