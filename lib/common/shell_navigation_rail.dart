import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../about/about_route.dart';
import '../companies/companies_route.dart';
import '../events/events_route.dart';
import '../home/home_route.dart';

class ShellNavigationRail extends StatelessWidget {
  const ShellNavigationRail({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return NavigationRail(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      destinations: const [
        NavigationRailDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: Text('Home'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.info_outline),
          selectedIcon: Icon(Icons.info),
          label: Text('About'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.church_outlined),
          selectedIcon: Icon(Icons.church),
          label: Text('Companies'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.calendar_month_outlined),
          selectedIcon: Icon(Icons.calendar_month),
          label: Text('Events'),
        ),
      ],
      selectedIndex: switch (GoRouterState.of(context).uri.path) {
        '/' => 0,
        '/about' => 1,
        '/companies' => 2,
        '/events' => 3,
        _ => 0,
      },
      onDestinationSelected: (index) {
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
      labelType: NavigationRailLabelType.all,
    );
  }
}
