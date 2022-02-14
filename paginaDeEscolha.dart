import 'package:exemplo32/imc.dart';
import 'package:exemplo32/main.dart';
import 'package:flutter/material.dart';

//nao sei se as 5 linhas de codigo a baixo tme utilidade

//void main() {
//  runApp(
//    const MeuApp(),
//  );
//}

class paginaDeEscolha extends StatefulWidget {
  const paginaDeEscolha({Key? key}) : super(key: key);

  @override
  _paginaDeEscolhaState createState() => _paginaDeEscolhaState();
}

//esta e a pagina inicial do app... esta se a pagina em q escolheremos se queremos ir para
//calculo de MAIOR e MENOR DE IDADE (imc haahhah)... Ou CALCULADORA

class _paginaDeEscolhaState extends State<paginaDeEscolha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //esqueleto do app
      home: Scaffold(
        //dentro de umaarea visivel da tela... Nao ficara em baixo de icones de bateria
        //sinal, etc...
        body: SafeArea(
            //criando um colum, pois assim poderemos colocar MAIS de um CONTAINER
            //um em baixo do outro
            child: Column(
          children: [
            //campo de deteccao de toque
            GestureDetector(
              //se for dado um clique/toque
              onTap: () {
                //a funcao navigator vai procurar em qual arquivo ta
                //e chamar a funcao IMC
                //era para ser Maior e Menor de idade, mas eu confudi com IMC...
                Navigator.of(context).pushNamed('/imc');
              },
              //container q vai servir para q ao clicar nele, executar a funcao acima
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: Text('maior e menor de idade'),
              ),
            ),
            //campo para deteccao de toque
            GestureDetector(
              //se for tocado uma vez
              onTap: () {
                //esse comando serve para q ao ser chamado
                //vai encontrar em qual ARQUIVO.DART ta a funcao/classe CALCULADORA
                //e o q tiver na FUNCAO/CLASSE CALCULADORA... Ira ser a pagina/tela
                Navigator.of(context).pushNamed('/calculadora');
              },
              //container q ao clicarmos VAI executar o q ta no GESTURE DETECTOR
              //acima
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: Text('calculadora'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
