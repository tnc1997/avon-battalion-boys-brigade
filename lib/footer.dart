import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  static const _columns = {
    'Explore': [
      'Age groups',
      'Find a company',
      'Events',
    ],
    'Get Involved': [
      'Volunteer as a leader',
      'Donate',
      'Officer training',
    ],
    'Contact': [
      'Email',
      'Facebook',
      'Website',
    ],
  };

  const Footer({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 64.0,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16.0,
                children: [
                  SvgPicture.asset(
                    'images/white_logo.svg',
                    height: 48.0,
                  ),
                  Text(
                    'Avon Battalion is part of The Boys\' Brigade, a Christian uniformed organisation for young people, serving companies across Bristol, Bath and Weston-super-Mare.',
                  ),
                ],
              ),
            ),
            for (final entry in _columns.entries)
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16.0,
                  children: [
                    Text(
                      entry.key.toUpperCase(),
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8.0,
                      children: [
                        for (final label in entry.value)
                          InkWell(
                            onTap: null,
                            child: Text(label),
                          ),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
