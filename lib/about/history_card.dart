import 'package:flutter/material.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
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
              'History',
              style: TextTheme.of(context).titleLarge,
            ),
            Text(
              'The Avon Battalion was formed in 1974 alongside the creation of the county of Avon. Previously, there had been a Bristol Battalion which was formed in 1891.',
            ),
          ],
        ),
      ),
    );
  }
}
