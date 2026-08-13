import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            SvgPicture.asset(
              'images/white_logo.svg',
              height: 48.0,
            ),
            SizedBox(
              width: 280.0,
              child: Text(
                'Avon Battalion is part of The Boys\' Brigade, a Christian uniformed organisation for young people, serving companies across Bristol, Bath and Weston-super-Mare.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
