import 'package:flutter/material.dart';

void main(List<String> args) => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {

  void responder1 () => print('Pergunta respondida!');
  void responder2 () => print('Certa resposta!');
  void responder3 () => print('Errado! errou feio');

  Widget build(BuildContext context) {
    List pergunta = [
      'Qual a cor da camisa?',
      'Qual a cor do carro?',
      'Qual é a !linguagem de programacao?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta'),
        ),
        body: Column(
          children: [
            Text(pergunta[1]),
            ElevatedButton(onPressed: () => responder1(), child: Text('Resposta')),
            ElevatedButton(onPressed: () => responder2(), child: Text('Resposta')),
            ElevatedButton(onPressed: () => responder3(), child: Text('Resposta')),
          ],
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';: Esta linha importa o pacote Flutter necessário para criar interfaces gráficas 
usando o framework Material Design.

main() { runApp(new PerguntaApp()); }: Esta é a função principal do programa. Aqui, você está chamando a função runApp, 
que é usada para iniciar a execução de um aplicativo Flutter. Dentro dela, você está passando uma instância da classe 
PerguntaApp, que será a raiz do seu aplicativo.

class PerguntaApp extends StatelessWidget { ... }: Esta é a definição da classe PerguntaApp. Ela é uma classe que estende 
StatelessWidget, o que significa que seu conteúdo não muda durante a vida útil do widget. Isso é adequado para casos em 
que o conteúdo é estático.

Widget build(BuildContext context) { ... }: Este é o método obrigatório que você deve implementar ao criar um widget 
Flutter. Ele retorna o widget que você deseja construir. Neste caso, está retornando um widget MaterialApp.

return MaterialApp( ... ): Aqui, você está retornando um widget MaterialApp, que é um widget fornecido pelo Flutter 
para criar aplicativos com base no Material Design. Ele define várias configurações e comportamentos padrão para o 
seu aplicativo.

home: Text('Hello, World!'),: Dentro do MaterialApp, você está definindo a tela inicial do seu aplicativo. Neste caso, 
está definindo-a como um widget Text com o texto 'Hello, World!'. Isso significa que quando o aplicativo for iniciado, 
esta será a primeira tela exibida.

 */
