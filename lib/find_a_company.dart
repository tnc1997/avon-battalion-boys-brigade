import 'package:flutter/material.dart';

import 'company_card.dart';

class FindACompany extends StatelessWidget {
  static const _companies = [
    (
      name: '10th Bristol',
      venue:
          'Hanham Methodist Church, Chapel Road, Hanham, South Gloucestershire, BS15 8SD',
      nights: ['Thu'],
      sections: [
        ('Anchors', '18:30–19:30'),
        ('Juniors', '18:30–20:00'),
        ('Company', '19:00–21:00'),
        ('Seniors', '19:00–21:00'),
      ],
      inclusivity: 'Boys only',
    ),
    (
      name: '11th Bristol',
      venue:
          'Kingswood Methodist Church, Grantham Road, Kingswood, Bristol, BS15 1JR',
      nights: ['Thu'],
      sections: [
        ('Anchors', '18:00–19:00'),
        ('Juniors', '18:00–19:30'),
        ('Company', '19:15–21:00'),
        ('Seniors', '19:15–21:00'),
      ],
      inclusivity: 'Boys only',
    ),
    (
      name: '6th Bristol',
      venue: 'Knowle Methodist Church, Wells Road, Bristol, BS4 2EP',
      nights: ['Tue'],
      sections: [
        ('Anchors', '17:00–18:00'),
        ('Juniors', '19:00–20:30'),
        ('Company', '19:00–21:00'),
        ('Seniors', '19:00–21:00'),
      ],
      inclusivity: 'Boys only',
    ),
    (
      name: '24th Bristol',
      venue:
          'St Luke\'s Church, Church Street, off Queen Ann Road, Barton Hill, BS5 9FB',
      nights: ['Mon'],
      sections: [
        ('Anchors', '18:30–19:30'),
      ],
      inclusivity: 'Boys & girls',
    ),
    (
      name: '2nd Bath',
      venue: 'Weston Free Church, High Street, Weston, Bath, Somerset, BA1 4DB',
      nights: ['Mon', 'Fri'],
      sections: [
        ('Anchors', 'Mon 18:00–19:00'),
        ('Juniors', 'Mon 18:00–19:30'),
        ('Company', 'Fri 18:15–21:00'),
        ('Seniors', 'Fri 18:15–21:00'),
      ],
      inclusivity: 'Boys & girls',
    ),
    (
      name: '1st Yate',
      venue: 'Yate Methodist Church, Moorland Road, Yate, Bristol, BS37 4BZ',
      nights: ['Mon'],
      sections: [
        ('Anchors', '18:30–19:30'),
        ('Juniors', '18:30–20:00'),
        ('Company', '18:30–21:30'),
        ('Seniors', '18:30–21:30'),
      ],
      inclusivity: 'Boys only',
    ),
    (
      name: '2nd Radstock',
      venue: 'Radstock Baptist Church, 6 Wells Road, Radstock, BA3 3RN',
      nights: ['Thu'],
      sections: [
        ('Anchors', '17:30–18:30'),
        ('Juniors', '18:30–20:00'),
        ('Company', '18:00–21:00'),
        ('Seniors', '18:00–21:00'),
      ],
      inclusivity: 'Boys only',
    ),
    (
      name: '2nd Weston-super-Mare',
      venue:
          'Milton Baptist Church, Baytree, Weston-super-Mare, Somerset, BS22 8HJ',
      nights: ['Thu'],
      sections: [
        ('Anchors', '18:00–19:00'),
        ('Juniors', '18:45–20:30'),
        ('Company', '18:45–20:30'),
      ],
      inclusivity: 'Boys & girls',
    ),
  ];

  const FindACompany({
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 64.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                Text(
                  'FIND A COMPANY',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                Text(
                  'EIGHT COMPANIES.\nONE BATTALION.',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Filter by night to see which company near you meets when — then get in touch to arrange a first visit.',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16.0,
              children: [
                for (final company in _companies)
                  CompanyCard(
                    name: company.name,
                    venue: company.venue,
                    nights: company.nights,
                    sections: company.sections,
                    inclusivity: company.inclusivity,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
