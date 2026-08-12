import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  /// The fixed height, in logical pixels, of the header's toolbar.
  ///
  /// This value is used both as the [AppBar.toolbarHeight] passed to the
  /// underlying [AppBar] and as the height returned by [preferredSize], so
  /// that the [Header] reports a consistent size to any parent widget (for
  /// example, a [Scaffold.appBar] slot) that needs to lay out space for it
  /// ahead of time.
  static const _height = 80.0;

  /// The display labels for the primary navigation links shown in the
  /// header's action area.
  ///
  /// These are currently rendered as placeholder [TextButton]s with no
  /// [TextButton.onPressed] behaviour, pending confirmation of whether the
  /// final site will be a single page (in which case each label would link
  /// to an in-page anchor) or split across multiple pages (in which case
  /// each label would link to a separate route). See the "Primary
  /// navigation link set" issue for further context.
  static const _labels = [
    'Age Groups',
    'Events',
    'Get Involved',
    'Contact',
  ];

  const Header({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
      title: Row(
        spacing: 16.0,
        children: [
          SvgPicture.asset(
            'images/white_logo.svg',
            height: 48.0,
          ),
          SizedBox(
            height: 32.0,
            child: VerticalDivider(
              width: 1.0,
              thickness: 1.0,
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AVON BATTALION',
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'BRISTOL · BATH · WESTON-SUPER-MARE',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        for (final label in _labels)
          TextButton(
            onPressed: null,
            child: Text(
              label.toUpperCase(),
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onTertiary,
                  ),
            ),
          ),
      ],
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      toolbarHeight: _height,
      actionsPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(_height);
  }
}
