import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailFloatingActionButton extends StatelessWidget {
  const EmailFloatingActionButton({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return FloatingActionButton(
      tooltip: 'Email',
      onPressed: () async {
        await launchUrl(
          Uri(
            scheme: 'mailto',
            path: 'avon.battalion@boys-brigade.org.uk',
          ),
        );
      },
      child: const Icon(Icons.email),
    );
  }
}
