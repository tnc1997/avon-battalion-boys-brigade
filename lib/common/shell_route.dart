import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../about/about_route.dart';
import '../companies/companies_route.dart';
import '../events/events_route.dart';
import '../home/home_route.dart';
import 'shell_screen.dart';

part 'shell_route.g.dart';

@TypedShellRoute<ShellRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(
      path: '/',
    ),
    TypedGoRoute<AboutRoute>(
      path: '/about',
    ),
    TypedGoRoute<CompaniesRoute>(
      path: '/companies',
    ),
    TypedGoRoute<EventsRoute>(
      path: '/events',
    ),
  ],
)
class ShellRoute extends ShellRouteData {
  const ShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    Widget navigator,
  ) {
    return ShellScreen(
      child: navigator,
    );
  }
}
