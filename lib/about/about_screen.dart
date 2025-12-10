import 'package:flutter/material.dart';

import 'history_card.dart';
import 'introduction_card.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16.0,
            children: [
              IntroductionCard(),
              HistoryCard(),
            ],
          ),
        ),
      ),
    );
  }
}
