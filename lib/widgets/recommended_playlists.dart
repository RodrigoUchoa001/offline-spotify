import 'package:flutter/material.dart';
import 'package:offline_spotify/widgets/playlist_button.dart';

class RecommendedPlaylists extends StatelessWidget {
  const RecommendedPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: PlaylistButton()),
            Expanded(child: PlaylistButton()),
          ],
        ),
        Row(
          children: [
            Expanded(child: PlaylistButton()),
            Expanded(child: PlaylistButton()),
          ],
        ),
        Row(
          children: [
            Expanded(child: PlaylistButton()),
            Expanded(child: PlaylistButton()),
          ],
        ),
      ],
    );
  }
}
