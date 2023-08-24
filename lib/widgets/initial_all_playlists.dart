import 'package:flutter/material.dart';

double playlistButtonHeight = 160;

class InitialAllPlaylists extends StatelessWidget {
  const InitialAllPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Suas Playlists',
          style: TextStyle(
            fontFamily: 'GothamMedium',
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: const AssetImage(
                          'assets/images/playlist_standard_icon.png'),
                      height: playlistButtonHeight,
                      width: playlistButtonHeight,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Playlist ${index + 1}',
                      style: const TextStyle(
                        fontFamily: 'GothamMedium',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
