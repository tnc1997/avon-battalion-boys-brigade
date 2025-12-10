import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/shell_route.dart';
import 'about_screen.dart';

class AboutRoute extends GoRouteData with $AboutRoute {
  const AboutRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const AboutScreen();
  }
}
