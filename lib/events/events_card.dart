import 'package:flutter/material.dart';

class EventsCard extends StatelessWidget {
  const EventsCard({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            Text(
              'Events',
              style: TextTheme.of(context).titleLarge,
            ),
            Text(
              'There are currently no major upcoming events in the Avon Battalion, please check with your local company for other events.',
            ),
          ],
        ),
      ),
    );
  }
}
