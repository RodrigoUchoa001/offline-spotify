import 'package:flutter/material.dart';

import 'package:offline_spotify/constants/app_colors.dart';
import 'package:offline_spotify/screens/tela_inicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppColors.temaPrincipal,
      debugShowCheckedModeBanner: false,
      home: const TelaInicial(),
    );
  }
}
