import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../companies/companies_route.dart';

class CompaniesCard extends StatefulWidget {
  const CompaniesCard({
    super.key,
  });

  @override
  State<CompaniesCard> createState() {
    return _CompaniesCardState();
  }
}

class _CompaniesCardState extends State<CompaniesCard> {
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
              'Companies',
              style: TextTheme.of(context).titleLarge,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We have a number of companies throughout the Bristol area, see them all ',
                  ),
                  TextSpan(
                    text: 'here',
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

    _recognizer.onTap = () {
      CompaniesRoute().go(context);
    };
  }
}
