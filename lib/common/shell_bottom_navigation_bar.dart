import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../about/about_route.dart';
import '../companies/companies_route.dart';
import '../events/events_route.dart';
import '../home/home_route.dart';

class ShellBottomNavigationBar extends StatelessWidget {
  const ShellBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
          activeIcon: Icon(Icons.home),
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info_outline),
          label: 'About',
          activeIcon: Icon(Icons.info),
          tooltip: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.church_outlined),
          label: 'Companies',
          activeIcon: Icon(Icons.church),
          tooltip: 'Companies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Events',
          activeIcon: Icon(Icons.calendar_month),
          tooltip: 'Events',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            const HomeRoute().go(context);
          case 1:
            const AboutRoute().go(context);
          case 2:
            const CompaniesRoute().go(context);
          case 3:
            const EventsRoute().go(context);
          default:
            const HomeRoute().go(context);
        }
      },
      currentIndex: switch (GoRouterState.of(context).uri.path) {
        '/' => 0,
        '/about' => 1,
        '/companies' => 2,
        '/events' => 3,
        _ => 0,
      },
    );
  }
}
