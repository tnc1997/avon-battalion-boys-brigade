import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  static const _statistics = [
    (value: '8', label: 'COMPANIES IN AVON'),
    (value: '4', label: 'AGE GROUPS, 5–18'),
    (value: '50+', label: 'YEARS IN THE AVON AREA'),
    (value: '100s', label: 'MEMBERS & VOLUNTEERS'),
  ];

  const Statistics({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withValues(
              alpha: 0.1,
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 64.0,
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              for (final (index, stat) in _statistics.indexed) ...[
                if (index > 0)
                  VerticalDivider(
                    width: 64.0,
                    thickness: 1.0,
                    color: Theme.of(context).colorScheme.onSurface.withValues(
                          alpha: 0.2,
                        ),
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8.0,
                    children: [
                      Text(
                        stat.value,
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        stat.label,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
