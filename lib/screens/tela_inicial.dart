import 'package:flutter/material.dart';
import 'package:offline_spotify/widgets/app_bar.dart';
import 'package:offline_spotify/widgets/recommended_playlists.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 48),
            AppBarInicial(),
            SizedBox(height: 16),
            RecommendedPlaylists(),
          ],
        ),
      ),
    );
  }
}
