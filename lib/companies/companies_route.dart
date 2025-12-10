import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/shell_route.dart';
import 'companies_screen.dart';

class CompaniesRoute extends GoRouteData with $CompaniesRoute {
  const CompaniesRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const CompaniesScreen();
  }
}
