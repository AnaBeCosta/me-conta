import 'package:flutter/material.dart';
import '../services/question_service.dart';
import '../components/question_card.dart';
import '../models/question.dart';
import 'end.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  List<Question> _todasPerguntas = [];
  List<Question> _perguntasSelecionadas = [];
  int _indice = 0;
  bool _jogoIniciado = false;

  @override
  void initState() {
    super.initState();
    _todasPerguntas = QuestionService().getShuffledQuestions();
  }

  void _iniciarJogo(int quantidade) {
    setState(() {
      _perguntasSelecionadas = _todasPerguntas.take(quantidade).toList();
      _jogoIniciado = true;
      _indice = 0;
    });
  }

  void _proximaPergunta() {
    if (_indice + 1 >= _perguntasSelecionadas.length) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const EndView()),
      );
    } else {
      setState(() {
        _indice++;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _jogoIniciado
            ? Text('Pergunta ${_indice + 1} de ${_perguntasSelecionadas.length}')
            : const Text('Escolha a quantidade'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: _jogoIniciado
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  QuestionCard(
                    pergunta:
                        'Pergunta ${_indice + 1}: ${_perguntasSelecionadas[_indice].text}',
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: _proximaPergunta,
                    child: const Text('Próxima'),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Quantas perguntas vocês querem responder?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => _iniciarJogo(15),
                    child: const Text('15 perguntas'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _iniciarJogo(20),
                    child: const Text('20 perguntas'),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => _iniciarJogo(30),
                    child: const Text('30 perguntas'),
                  ),
                ],
              ),
      ),
    );
  }
}
