import '../models/question.dart';

class QuestionService {
  final List<Question> _questions = [
    Question('Qual foi a última vez que você riu muito?'),
    Question('Se você pudesse jantar com qualquer pessoa do mundo, quem seria?'),
    Question('Qual é sua lembrança de infância favorita?'),
    Question('O que te deixa realmente feliz?'),
    Question('Se você pudesse mudar algo no mundo, o que seria?'),
    Question('Qual é o seu maior sonho?'),
    Question('Qual seu filme preferido?'),
    Question('Conte sobre uma pessoa que entrou na sua vida e te ajudou a ser melhor.'),
    Question('Compartilhe um bom conselho que você já recebeu.'),
    Question('Você se considera uma pessoa feliz? Por quê?'),
    Question('Como seria um date perfeito para você?'),
    Question('Qual é sua comida favorita e por quê?'),
    Question('Se tivesse mais um ano de vida, o que faria diferente?'),
    Question('Como é a sua relação com a sua família?'),
    Question('Você acredita em alma gêmea?'),
    Question('Você gostaria de ser famoso? Por qual motivo?'),
    Question('O que mais te assusta atualmente?'),
    Question('O que você mais valoriza em uma amizade?'),
    Question('Qual foi um momento marcante da sua vida?'),
    Question('Você se sente realizado com sua vida atual?'),
    Question('O que você faz quando está se sentindo triste?'),
    Question('Qual foi a decisão mais difícil que já tomou?'),
    Question('Se pudesse voltar no tempo, o que faria diferente?'),
    Question('Qual hábito você gostaria de mudar em si mesmo?'),
    Question('O que significa sucesso para você?'),
    Question('Você acredita em destino ou escolhas?'),
    Question('Que tipo de pessoa você quer ser lembrado por ser?'),
    Question('O que você aprendeu com um erro recente?'),
    Question('Existe algo que você nunca contou para ninguém?'),
    Question('Qual é o seu maior medo e como lida com ele?'),
  ];

  List<Question> getShuffledQuestions() {
    final shuffled = List<Question>.from(_questions);
    shuffled.shuffle();
    return shuffled;
  }
}
