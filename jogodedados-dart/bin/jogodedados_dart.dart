import 'package:jogodedados_dart/jogodedados_dart.dart';

import 'dart:io';

void main() {
  stdout.write('Seja bem-vindo à BATALHA DE DADOS!\nDigite o seu nome:');
  var nome = stdin.readLineSync();
  stdout.write('$nome, digite o número de rodadas que quer jogar:');
  var rodadas = stdin.readLineSync();
  stdout.writeln("Voce jogará $rodadas rodada(s)!");
  int i = 0;
  int Play = 0;
  int PC = 0;
  int Emp = 0;
  while (rodadas != null && rodadas != i.toString()) {
    int rodar1 = tresDados();
    print("$nome tem a sua pontuação de $rodar1");
    int rodar2 = tresDados();
    print("O computador tem a sua pontuação de $rodar2");
    if (rodar1 > rodar2) {
      print("Você ganhou! Sua pontuacao: $rodar1 e a do seu rival: $rodar2.");
      Play++;
    } else if (rodar1 == rodar2) {
      print(
          "Você empatou com $rodar1 pontos. A probabilidade disso: 2,78%! WOW!");
      Emp++;
    } else {
      print("Você perdeu! Sua pontuacao: $rodar1 e a do seu rival: $rodar2.");
      PC++;
    }
    print(
        "O placar está\nVitória Jogador: $Play\nVitória computador: $PC\nEmpates: $Emp");
    print("----------------------------------------");
    i++;
  }
  if (Play > PC) {
    print("PARABÉNS, você venceu mais que o grande rival, pode se gabar!");
  } else if (PC > Play) {
    print("Você foi derrotado, vai sair perdendo mesmo?");
  } else {
    print("Houve um empate técnico!");
  }
}