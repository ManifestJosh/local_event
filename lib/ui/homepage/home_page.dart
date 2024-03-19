import 'package:flutter/material.dart';
import 'package:local_event/app_state.dart';
import 'package:local_event/ui/homepage/category_widgets.dart';
import 'package:local_event/ui/homepage/event_details/events.dart';
import 'package:provider/provider.dart';
import '../../model/category.dart';
import '../../styleguide.dart';
import 'event_widget.dart';
import 'home_pagebackground.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Consumer<AppState>(
          builder: (context, appState, _) => Stack(
            children: <Widget>[
              HomePageBackground(
                  screenHeight: MediaQuery.of(context).size.height),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "LOCAL EVENTS",
                            style: fadedTextStyle,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.person_outline,
                            color: Color(0x99FFFFFF),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        "What's Up",
                        style: whiteHeadTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            for (final category in categories)
                              CategoryWidget(category: category)
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        for (final event in events.where((e) => e.categoryIds
                            .contains(appState.selectedCategoryId)))
                          EventWidget(
                            event: event,
                          )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
