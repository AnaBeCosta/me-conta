import 'package:flutter/material.dart';
import 'game.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( // Centraliza tudo na tela
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Faz a coluna ocupar só o espaço necessário
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Me Conta',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const GameView()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  child: Text(
                    'Iniciar Jogo',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              const Text(
                'desenvolvido por Ana Beatriz Faria',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
