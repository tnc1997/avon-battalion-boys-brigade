import 'package:flutter/material.dart';

class Hero extends StatelessWidget {
  const Hero({
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
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16.0,
                children: [
                  Text(
                    'AVON BATTALION · THE BOYS\' BRIGADE · EST. 1974',
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'SURE AND ',
                        ),
                        TextSpan(
                          text: 'STEDFAST',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        const TextSpan(
                          text: ',\nWHICHEVER NIGHT IS YOURS.',
                        ),
                      ],
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    'Weekly companies across Bristol, Bath and Weston-super-Mare give boys and girls aged 5–18 a place to grow in faith, skill and friendship — through games, badges, camps and community.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
