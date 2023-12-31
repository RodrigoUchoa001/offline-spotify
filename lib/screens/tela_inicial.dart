import 'package:flutter/material.dart';
import 'package:offline_spotify/widgets/app_bar.dart';
import 'package:offline_spotify/widgets/bottom_nav_bar.dart';
import 'package:offline_spotify/widgets/initial_all_playlists.dart';
import 'package:offline_spotify/widgets/recommended_playlists.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 64),
            AppBarInicial(),
            SizedBox(height: 16),
            RecommendedPlaylists(),
            SizedBox(height: 24),
            InitialAllPlaylists(),
            InitialAllPlaylists(),
            InitialAllPlaylists(),
            InitialAllPlaylists(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
