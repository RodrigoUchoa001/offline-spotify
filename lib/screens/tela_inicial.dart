import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:offline_spotify/widgets/app_bar.dart';
import 'package:offline_spotify/widgets/bottom_nav_bar.dart';
import 'package:offline_spotify/widgets/initial_all_playlists.dart';
import 'package:offline_spotify/widgets/recommended_playlists.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  void initState() {
    super.initState();
    FlutterDisplayMode.setHighRefreshRate();
  }

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
