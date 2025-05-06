import 'package:flutter/material.dart';
import 'home.dart';

class EndView extends StatelessWidget {
  const EndView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fim do Jogo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Obrigada por jogar!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeView()),
                  (route) => false,
                );
              },
              child: const Text('Voltar ao Início'),
            ),
          ],
        ),
      ),
    );
  }
}
