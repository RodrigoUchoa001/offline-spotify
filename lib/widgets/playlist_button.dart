import 'package:flutter/material.dart';
import 'package:offline_spotify/constants/app_colors.dart';

double playlistButtonHeight = 60;

class PlaylistButton extends StatelessWidget {
  const PlaylistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: playlistButtonHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: AppColors.temaPrincipal.cardColor,
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(color: Colors.white),
              ClipRRect(
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(4)),
                child: Image(
                  image: const AssetImage(
                      'assets/images/playlist_standard_icon.png'),
                  height: playlistButtonHeight,
                  width: playlistButtonHeight,
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          const Text(
            'Nome da Playlist',
            style: TextStyle(
              fontFamily: 'GothamMedium',
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
