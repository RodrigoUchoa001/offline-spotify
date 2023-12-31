import 'package:flutter/material.dart';
import 'package:offline_spotify/screens/player_screen.dart';
import 'package:offline_spotify/widgets/bottom_music_player_bar.dart';
import 'package:page_transition/page_transition.dart';

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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Colors.transparent,
          Colors.black,
        ],
        stops: [0, 1],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.linear,
                  type: PageTransitionType.bottomToTop,
                  child: const PlayerScreen(),
                ),
              );
            },
            child: const BottomMusicPlayerBar(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getBottomNavBarIcon(Icons.home_filled, 'Início'),
                getBottomNavBarIcon(Icons.search, 'Buscar'),
                getBottomNavBarIcon(
                    Icons.library_music_outlined, 'Sua biblioteca'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
