import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  static const _height = 80.0;

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
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      toolbarHeight: _height,
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(_height);
  }
}
