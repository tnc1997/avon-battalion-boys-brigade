import 'package:flutter/material.dart';

import 'companies_card.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 16.0,
            children: [
              CompaniesCard(),
            ],
          ),
        ),
      ),
    );
  }
}
