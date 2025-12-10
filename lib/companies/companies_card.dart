import 'package:flutter/material.dart';

class CompaniesCard extends StatelessWidget {
  const CompaniesCard({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Card(
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 16.0,
              right: 16.0,
              bottom: 0.0,
            ),
            child: Text(
              'Companies',
              style: TextTheme.of(context).titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 0.0,
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text('3rd Bristol'),
                  subtitle: Text('Argyle Morley United Reformed Church'),
                ),
                ListTile(
                  title: Text('6th Bristol'),
                  subtitle: Text('Counterslip Baptist Church'),
                ),
                ListTile(
                  title: Text('7th Bristol'),
                  subtitle: Text('Stapleton Holy Trinity Church'),
                ),
                ListTile(
                  title: Text('10th Bristol'),
                  subtitle: Text('Hanham Methodist Church'),
                ),
                ListTile(
                  title: Text('11th Bristol'),
                  subtitle: Text('Kingswood Methodist Church'),
                ),
                ListTile(
                  title: Text('20th Bristol'),
                  subtitle: Text('Victoria Park Baptist Church'),
                ),
                ListTile(
                  title: Text('21st Bristol'),
                  subtitle: Text('BB Hall, Vivian Street'),
                ),
                ListTile(
                  title: Text('28th Bristol'),
                  subtitle: Text('Staple Hill Methodist Church'),
                ),
                ListTile(
                  title: Text('36th Bristol'),
                  subtitle: Text('Bethesda Methodist Church'),
                ),
                ListTile(
                  title: Text('2nd Weston-super-Mare'),
                  subtitle: Text('Milton Baptist Church'),
                ),
                ListTile(
                  title: Text('1st Yate'),
                  subtitle: Text('Yate Methodist Church'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
