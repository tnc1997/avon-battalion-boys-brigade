import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: IntrinsicHeight(
          child: Row(
            spacing: 64.0,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
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
                    Row(
                      spacing: 16.0,
                      children: [
                        FilledButton(
                          onPressed: null,
                          child: const Text('FIND YOUR NEAREST COMPANY'),
                        ),
                        OutlinedButton(
                          onPressed: null,
                          child: const Text('BECOME A LEADER'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onTertiary.withValues(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 16.0,
                      children: [
                        SvgPicture.asset(
                          'images/anchor_emblem.svg',
                          width: 180.0,
                        ),
                        Text(
                          'HEBREWS 6:19',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
