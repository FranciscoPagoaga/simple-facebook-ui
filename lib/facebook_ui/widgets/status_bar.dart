import 'package:flutter/material.dart';

import 'avatar.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Avatar(
          size: 60,
          asset: 'assets/users/1.jpg',
        ),
        SizedBox(
          width: 20,
        ),
        Flexible(
          child: Text(
            'Whats on your mind, Lisa?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
