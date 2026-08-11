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
      title: SvgPicture.asset(
        'images/white_logo.svg',
        height: 48.0,
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
