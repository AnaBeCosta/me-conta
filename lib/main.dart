import 'package:flutter/material.dart';
import 'views/home.dart'; // importa a tela inicial

void main() {
  runApp(const MeContaApp());
}

class MeContaApp extends StatelessWidget {
  const MeContaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me Conta',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const HomeView(), // essa será a primeira tela ao abrir
    );
  }
}
