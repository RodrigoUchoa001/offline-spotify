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
      margin: const EdgeInsets.all(4),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.horizontal(left: Radius.circular(4)),
            child: Image(
              image:
                  const AssetImage('assets/images/playlist_standard_icon.png'),
              height: playlistButtonHeight,
              width: playlistButtonHeight,
            ),
          ),
          const SizedBox(width: 8),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Nome da playlist playlist playlist playlist',
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'GothamMedium',
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
