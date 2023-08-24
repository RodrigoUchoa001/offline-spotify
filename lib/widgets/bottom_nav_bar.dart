import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  Widget getBottomNavBarIcon(IconData icone, String label) {
    return Expanded(
      child: Column(
        children: [
          Icon(icone),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          getBottomNavBarIcon(Icons.home_filled, 'Início'),
          getBottomNavBarIcon(Icons.search, 'Buscar'),
          getBottomNavBarIcon(Icons.library_music_outlined, 'Sua biblioteca'),
        ],
      ),
    );
  }
}
