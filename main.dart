import 'package:flutter/material.dart';
import 'package:exemplo32/paginaDeEscolha.dart';
import 'package:exemplo32/imc.dart';
import 'package:exemplo32/calculadora.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
//local para colocar as variaveis
//mas como este arquivo vai servir apenas para dizer quais as TELAS e ROTAS
//entao nao irei declarar variaveis aqui...

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //dizendo qual a tela RAIZ ((//))
      //ou seja qual a ROTA inicial q no caso e representado por /
      initialRoute: '/',
      routes: {
        //declarando as rotas... No caso o "/" a tela inicial é a funcao PAGINA DE ESCOLHA()
        '/': (_) => const paginaDeEscolha(),
        //quando apertar em algum CONTAINER/BOTAO... e ele chamar o /IMC
        //vamos chamar a FUNCAO IMC()... Essa funcao ta dentro do arquivo IMC.DART
        //mas o arquivo IMC.DART poderia ter OUTRO NOME... Q ainda iria chamar a funcao
        '/imc': (_) => const imc(),
        //se um algum CONTAINER ou BOTAO chamar o /CALCULADORA...
        //nos vamos chamar a funcao CALCULADORA()... Irar achar em qual arquivo ta
        //essa funcao... e o q tiver dentro dessa funcao, irar ser a TELA CALCULADORA...
        '/calculadora': (_) => const calculadora(),
      },
    );
  }
}
