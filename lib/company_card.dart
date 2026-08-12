import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({
    super.key,
    required this.name,
    required this.venue,
    required this.nights,
    required this.sections,
    required this.inclusivity,
  });

  final String name;
  final String venue;
  final List<String> nights;
  final List<(String name, String time)> sections;
  final String inclusivity;

  @override
  Widget build(
    BuildContext context,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.onTertiary.withValues(
                alpha: 0.2,
              ),
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4.0,
                    children: [
                      Text(
                        name,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      Text(venue),
                    ],
                  ),
                ),
                Row(
                  spacing: 8.0,
                  children: [
                    for (final night in nights)
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 8.0,
                          ),
                          child: Text(
                            night.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: Theme.of(context).colorScheme.onTertiary.withValues(
                    alpha: 0.2,
                  ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              children: [
                for (final section in sections)
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          section.$1,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Text(
                        section.$2,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
              ],
            ),
            Text(
              inclusivity.toUpperCase(),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
