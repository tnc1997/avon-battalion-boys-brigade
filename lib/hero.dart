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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'AVON BATTALION · THE BOYS\' BRIGADE · EST. 1974',
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const SizedBox(
                  height: 16.0,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
