import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class QuestionsCard extends StatefulWidget {
  const QuestionsCard({
    super.key,
  });

  @override
  State<QuestionsCard> createState() {
    return _QuestionsCardState();
  }
}

class _QuestionsCardState extends State<QuestionsCard> {
  final _recognizer = TapGestureRecognizer();

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
              'Questions',
              style: TextTheme.of(context).titleLarge,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Please do not hesitate to get in touch with us, you can contact us via ',
                  ),
                  TextSpan(
                    text: 'email',
                    style: TextStyle(
                      color: ColorScheme.of(context).primary,
                    ),
                    recognizer: _recognizer,
                  ),
                  TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _recognizer.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _recognizer.onTap = () async {
      await launchUrl(
        Uri(
          scheme: 'mailto',
          path: 'avon.battalion@boys-brigade.org.uk',
        ),
      );
    };
  }
}
