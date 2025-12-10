import 'package:flutter/material.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({
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
              'Introduction',
              style: TextTheme.of(context).titleLarge,
            ),
            Text(
              'There are currently 11 companies in the Avon Battalion which stretches across 3 different local authorities. Between all of these companies there are over 340 boys and over 100 staff.',
            ),
          ],
        ),
      ),
    );
  }
}
