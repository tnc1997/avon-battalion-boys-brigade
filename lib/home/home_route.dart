import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/shell_route.dart';
import 'home_screen.dart';

class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const HomeScreen();
  }
}
