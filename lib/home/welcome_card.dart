import 'package:flutter/material.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
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
              'Welcome',
              style: TextTheme.of(context).titleLarge,
            ),
            Text(
              'The Avon Battalion consists of the various companies in and around the Bristol area.',
            ),
          ],
        ),
      ),
    );
  }
}
