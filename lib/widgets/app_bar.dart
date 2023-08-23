import 'package:flutter/material.dart';

class AppBarInicial extends StatelessWidget {
  const AppBarInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Boa noite',
          style: TextStyle(
            fontFamily: 'GothamMedium',
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Expanded(child: Container()),
        const Icon(Icons.notifications_outlined),
        const SizedBox(width: 12),
        const Icon(Icons.schedule),
        const SizedBox(width: 12),
        const Icon(Icons.settings_outlined),
        const SizedBox(width: 12),
      ],
    );
  }
}
