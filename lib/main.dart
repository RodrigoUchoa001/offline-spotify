import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

import 'package:offline_spotify/constants/app_colors.dart';
import 'package:offline_spotify/screens/tela_inicial.dart';

void main() async {
  runApp(const MyApp());
  await FlutterDisplayMode.setHighRefreshRate();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offline Spotify',
      theme: AppColors.temaPrincipal,
      debugShowCheckedModeBanner: false,
      home: const TelaInicial(),
    );
  }
}
