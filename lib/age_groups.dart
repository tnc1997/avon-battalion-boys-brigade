import 'package:flutter/material.dart';

class AgeGroups extends StatelessWidget {
  static const _ageGroups = [
    (
      range: '5–8',
      name: 'Anchors',
      description:
          'Games, crafts and first badges for the youngest members, building confidence and early friendships.',
    ),
    (
      range: '8–11',
      name: 'Juniors',
      description:
          'Team games, camps and the Discover programme, with a first taste of Battalion-wide events.',
    ),
    (
      range: '11–14',
      name: 'Company',
      description:
          'Badge work across sport, skills and community, working toward the Discovery and President\'s Badge.',
    ),
    (
      range: '14–18',
      name: 'Seniors',
      description:
          'Leadership, residential trips and the Queen\'s Badge — the Brigade\'s highest award.',
    ),
  ];

  const AgeGroups({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
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
                'AGE GROUPS',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
              Text(
                'ONE ORGANISATION.\nFOUR AGE GROUPS.',
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Every section runs its own programme of games, badge-work, outdoor activity and faith exploration, built around the age and stage of the young people in it.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          Row(
            spacing: 32.0,
            children: [
              for (final ageGroup in _ageGroups)
                Expanded(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withValues(
                            alpha: 0.1,
                          ),
                      border: Border.all(
                        color:
                            Theme.of(context).colorScheme.onTertiary.withValues(
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
                          CircleAvatar(
                            radius: 32.0,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            child: Text(
                              ageGroup.range,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                            ),
                          ),
                          Text(
                            ageGroup.name.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            ageGroup.description,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
