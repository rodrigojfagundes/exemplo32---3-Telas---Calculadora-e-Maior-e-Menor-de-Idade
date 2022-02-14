import 'package:flutter/material.dart';

//nao sei se as 5 linhas de codigo a baixo tem utilidade...

//void main() {
//  runApp(
//    const calculadora(),
//  );
//}

class calculadora extends StatefulWidget {
  const calculadora({Key? key}) : super(key: key);

  @override
  _calculadoraState createState() => _calculadoraState();
}

class _calculadoraState extends State<calculadora> {
//local para definir as variaveis
//variavel valorDigitado é do tipo TEXT... entao os numeros
//q ela recebe ficam "12345679" ou seja NAO SOMA os valores...
  final TextEditingController valorDigitado = TextEditingController();
  //variaveis
  var numero1;
  var numero2;
  var operacao;
  double resultado = 0;

//esqueleto do app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //criando esqueleto do app
      home: Scaffold(
        //tudo q tiver no safe area fica na area visivel da tela...
        //sem barra de sinal, bateria, etc...
        body: SafeArea(
          //ListView é um tipo de funcao q recebe um container... e ele fica
          //esticado... nele vamos mostrar o valor da variavel RESULTADO...
          //variavel essa q recebe o resultado da nossa calculadora
          child: ListView(
            //tamanho das margens
            padding: const EdgeInsets.all(8),
            children: [
              //vai receber o container q vai ter o resultado da calculadora
              Container(
                height: 80,
                color: Colors.blue,
                child: Center(
                  //exibindo o valor q ta na variavel resultado
                  child: Text('$resultado'),
                ),
              ),
              //esta row vai receber 3 containers
              Row(
                //este childre vai receber 3 FILHOS/CONTAINERS... cada container um NUMERO
                children: [
                  //campo para detectar toque
                  GestureDetector(
                    //se for dado um toque/click
                    onTap: () {
                      //ira permitir alterar o valor da variavel
                      setState(() {
                        //variavel ValorDIgitado recebe valor 1
                        valorDigitado.text = valorDigitado.text + "1";
                        //variavel RESULTADO recebe o valor q ta na variavel ValorDigitado
                        //no caso o valor 1...
                        //pois assim podemos exibir o valor 1 no container q ta no ListView
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container, tamanho, cor, e texto 1
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('1'),
                    ),
                  ),
                  //area de detectar toque, clique
                  GestureDetector(
                    //se for clicado uma vez
                    onTap: () {
                      //permitir alterar valor da variavel
                      setState(() {
                        //alterando valor da variavel
                        valorDigitado.text = valorDigitado.text + "2";
                        //variavel resultado recebe ja o q ta na variavel valorDigitado
                        //pois assim podemos ir exibindo o q e digitado na calculadora
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //cotainer para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      //exibir o numero 2 para clicarmos
                      child: Text('2'),
                    ),
                  ),
                  //campo de deteccao de toque
                  GestureDetector(
                    //se der um clique
                    onTap: () {
                      //permiti alterar o valor da variavel
                      setState(() {
                        //variavel valor digitado recebe o valor, junto aos valores
                        //ja existente
                        valorDigitado.text = valorDigitado.text + "3";
                        //variavel resultado recebe os valores q tao em valordigitado.text
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('3'),
                    ),
                  ),
                ],
              ),
              //nova linha/row para por 3 containers
              Row(
                children: [
                  //criando campo para detectar toque...
                  GestureDetector(
                    //se for clicado uma vez
                    onTap: () {
                      //permiti alterar o valor da variavel
                      setState(() {
                        //alterando valor das variaveis... recebendo val 5
                        valorDigitado.text = valorDigitado.text + "4";
                        //resultado recebe valor digitado
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('4'),
                    ),
                  ),
                  //campo para deteccao de toque
                  GestureDetector(
                    //se for clicado uma vez
                    onTap: () {
                      //permiti alterar o estado da variavel
                      setState(() {
                        //variavel recebe valor 5
                        valorDigitado.text = valorDigitado.text + "5";
                        //valor digitado e passado para variavel RESULTADO
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('5'),
                    ),
                  ),
                  //campo para detect toque
                  GestureDetector(
                    //se for clicado uma vez
                    onTap: () {
                      //permiti alterar o valor/estado da variavel
                      setState(() {
                        //alterando valor de valor digitado
                        valorDigitado.text = valorDigitado.text + "6";
                        //passando valores de valor digitado para resultado
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('6'),
                    ),
                  ),
                ],
              ),
              //linha com 3 containers
              Row(
                children: [
                  //cmapo detector de toque
                  GestureDetector(
                    //se clicar 1 vez
                    onTap: () {
                      //permitir alterar valor da variavel
                      setState(() {
                        //alterando valores
                        valorDigitado.text = valorDigitado.text + "7";
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('7'),
                    ),
                  ),
                  //campo de detectao de toque
                  GestureDetector(
                    //se clicar uma vez
                    onTap: () {
                      //permiti alterar o estado
                      setState(() {
                        //alterando valores das variaveis
                        valorDigitado.text = valorDigitado.text + "8";
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('8'),
                    ),
                  ),
                  //campo para detectar toque
                  GestureDetector(
                    //se clicar 1 vez
                    onTap: () {
                      //permite alterar estado da variavel
                      setState(() {
                        //variavel valor digitado recebe val 9
                        valorDigitado.text = valorDigitado.text + "9";
                        //resultado recebe os valores q tao em valor digitado
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('9'),
                    ),
                  ),
                ],
              ),
              //row/linha com mais 3 containers
              Row(
                children: [
                  //campo de deteccao de toque
                  GestureDetector(
                    //on click/toque
                    onTap: () {
                      //alterando valores das variaveis
                      setState(() {
                        valorDigitado.text = valorDigitado.text + "0";
                        resultado = double.parse(valorDigitado.text);
                      });
                    },
                    //container para exec as funcoes acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('0'),
                    ),
                  ),
                  //campo para detecar toque/clique
                  GestureDetector(
                    //se clicar uma vez
                    onTap: () {
                      //permitir que altere o valor das variaveis a baixo
                      setState(() {
                        //variavel NUMERO1, recebe os valor de valorDigitado.text
                        numero1 = double.parse(valorDigitado.text);
                        //limpando os valores q ta na variavel ValorDigitado...
                        //pq ela sera usada para o proximo numero
                        //afinal uma CALCULADORA RECEBE 2 ou + valores...
                        //ex 2 + 2
                        valorDigitado.clear();
                        //se a variavel operacao recebe 1, significa q vmaos fazer uma
                        //soma
                        operacao = 1;
                      });
                    },
                    //container para exec a funcao acima...
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      //vamos fazer uma SOMA ++
                      child: Text('+'),
                    ),
                  ),
                  //campo de detectar toque
                  GestureDetector(
                    //um clique/toque
                    onTap: () {
                      //permiti alterar o valor
                      setState(() {
                        //NUMERO1 recebe o q ta em valorDigitado
                        numero1 = double.parse(valorDigitado.text);
                        //variavel valor digitado é zerada
                        //pois sera colocado proximos numeros nela
                        //tipo 10+10... um calculo e feito com no minimo 2 valores
                        valorDigitado.clear();
                        //se var operacao recebe 2 significa q e diminuir
                        operacao = 2;
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      //como a operacao e = 2 entao é funcao de MENOS
                      //por isso o simbolo e de menos
                      child: Text('-'),
                    ),
                  ),
                ],
              ),
              //linha com 3 containers
              Row(
                children: [
                  //campo para detectar toque
                  GestureDetector(
                    //se for dado um toque/click
                    onTap: () {
                      //set state vai permitir alterar o valor da variavel
                      setState(() {
                        //variavel NUMERO1 vai receber o q ta em valorDigitado.text
                        //isso acontece pq o q ta em ValorDigitado e do tipo TEXTUAL
                        //ou seja NAO DA PARA FAZER OPERACAO MATEMATICA...
                        //por isso jogamos para uma variavel do tipo
                        //DOUBLE, no caso a NUMERO1
                        numero1 = double.parse(valorDigitado.text);
                        //limpando os valor q ta na variavel valorDigitado
                        valorDigitado.clear();
                        //operacao recebe o valor 3, significaq e uma operacao de
                        //MULTIPLICACAO
                        operacao = 3;
                      });
                    },
                    //container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('*'),
                    ),
                  ),
                  //area de deteccao de toque/click
                  GestureDetector(
                    //se for dado um click toque
                    onTap: () {
                      //setstate permite alterar o VALOR/ESTADO de variaveis
                      setState(() {
                        //variavel DOUBLE NUMERO1 recebe o q ta na variavel
                        //valorDigitado, pois assim, passando o valor para Variavel
                        //NUMERO1, iremos poder realizar as OP matematica
                        //tipo Multiplicacao, Soma, Divisao, etc...
                        numero1 = double.parse(valorDigitado.text);
                        //limpando os valores q estao em valorDigitado,
                        //pois essa variavel tem q ta ZERADA
                        //para podermos por os proximos numeros
                        //para fazer as operacoes matematica
                        valorDigitado.clear();
                        //variavel operacao recebe o valor 4...
                        //entao significa q iremos fazer umaoperacao de divisao
                        operacao = 4;
                      });
                    },
                    //container para q ao clicarmos ao container
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('/'),
                    ),
                  ),
                  //area de detectar toque/clique
                  GestureDetector(
                    //se for da um toque/click
                    onTap: () {
                      //set state permite alterar o valor/estado de variaveis
                      setState(() {
                        //se a variavel OPERACAO tiver o valor de 1
                        //significa que iremos fazer uma OPERACAO de SOMA
                        if (operacao == 1) {
                          //o q ta na var ValorDigitado vai para a variavel DOUBLE NUMERO2
                          numero2 = double.parse(valorDigitado.text);
                          //e variavel RESULTADO recebe a SOMA de numero1 + numero2
                          resultado = numero1 + numero2;
                        }
                        //se o valor q ta na VARIAVEL OPERACAO for o 2
                        //significa q iremos fazer uma OPERACAO de DIMINUIR
                        if (operacao == 2) {
                          //o q ta na var ValorDigitado vai para a variavel DOUBLE NUMERO2
                          numero2 = double.parse(valorDigitado.text);
                          //a variavel RESULTADO recebe o valor da DIMINUICAO
                          //de numero1 - numero2
                          resultado = numero1 - numero2;
                        }
                        //se o valor q ta na VARIAVEL OPERACAO2 for o 3
                        //significa q iremos fazer uma OPERACAO de MULTIPLICAR
                        if (operacao == 3) {
                          //o q ta na var valorDigitado vai para a variavel DOUBLE NUMERO2
                          numero2 = double.parse(valorDigitado.text);
                          //variavel double RESULTADO recebe a multiplicacao
                          //de NUMERO1 * NUMERO2
                          resultado = numero1 * numero2;
                        }
                        //SE o valor q ta na VARIAVEL OPERACAO for o 4
                        //significa q iremos fazer uma OPERACAO de DIVISAO
                        if (operacao == 4) {
                          //o q ta na variavel ValorDigitado vai para variavel DOUBLE NUMERO2
                          numero2 = double.parse(valorDigitado.text);
                          //a variavel DOUBLE RESULTADO recebe o valor da
                          //DIVISAO de NUMERO1 / NUMERO2
                          resultado = numero1 / numero2;
                        }
                      });
                    },
                    //container com o SIMBOLO de === para q ao clicarmos nele
                    //executar a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('='),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
