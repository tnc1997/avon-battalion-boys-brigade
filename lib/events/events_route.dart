import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/shell_route.dart';
import 'events_screen.dart';

class EventsRoute extends GoRouteData with $EventsRoute {
  const EventsRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const EventsScreen();
  }
}
