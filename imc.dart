import 'package:exemplo32/main.dart';
import 'package:flutter/material.dart';

//Nao sei se as 5 linhas de codigo a baixo tem utilidade

//void main() {
//  runApp(
//    const imc(),
//  );
//}

class imc extends StatefulWidget {
  const imc({Key? key}) : super(key: key);

  @override
  _imcState createState() => _imcState();
}

class _imcState extends State<imc> {
  //local para variaveis
  //variavel q vai armazenar os numeros digitados... SEM SOMAR-LOS
  //mas como nao é variavel do tipo DOUBLE, nos nao podemos fazer OPERACOES matematicas com
  //ela, pois os valores de NUMEROS q tao nela estao no TIPO TEXTUAL...
  //ou seja nao da para SOMAR, MULTIPLICAR,ETC...
  final TextEditingController idadeDigitada = TextEditingController();
  //variavel q ira receber o q ta na variavel IDADEDIGITADA... e como a variavel IDADE
  // e do tipo NUMERICO...entao iremos poder fazer operacoes matematicas
  //e verificar se é MAIOR ou MENOR de idade...
  var idade;
  //variavel resultado e do tipo textual... entao vai exibir a mensagem
  //Maior de Idade... ou Menor de Idade...
  var resultado = 'resultado';
  @override
  //esqueleto do app
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //area do app... coisas NAO FICARAM em baixo dos icones de BATERIA, SINAL, etc...
        body: SafeArea(
          //o primeiro child/filho... e um ListView para assim podermos colocar um
          //container esticado no topo do app... Container esse q ira servir para exibir
          //o RESULTADO, se e Maior ou Menor de Idade
          child: ListView(
            //padding e o tamanho da margem com a lateral do APP
            padding: const EdgeInsets.all(8),
            //children podemos criar VARIOS Containers, ao contrario do CHILD
            //entao iremos criar um para exibir o resultado...
            //e outros para serem os numeros
            children: [
              //criando o primeiro container... ele vai ficar esticado no topo do app
              //e vai exibir o resultado...
              Container(
                //tamanho de altura, cor, e o q vai exibir e o q ta no resultado
                height: 75,
                color: Colors.blue,
                child: Text(resultado),
              ),
              //criando a primeira LINHA/ROW para receber 3 CONTAINER
              //cada container é um botao com numero
              Row(
                //dentro desse ROW/LINHA tera 1 CHILDREN com 3 containers
                children: [
                  //area de detecao ao clique/toque
                  GestureDetector(
                    //se for dado um click/toque
                    onTap: () {
                      //set state ira permitir altera o valor da
                      //variavel IDADE DIGITADA
                      setState(() {
                        //adicionando o valor 1 a variavel idadeDigitada
                        idadeDigitada.text = idadeDigitada.text + "1";
                      });
                    },
                    //criando container para o numero 1... tamanho, cor, texto
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('1'),
                    ),
                  ),
                  //campo para detectar toque para o numero 2
                  GestureDetector(
                    //se der 1 clique/toque
                    onTap: () {
                      //ira alterar o valor da variavel idadeDigitada... somando a ela o
                      //valor 2
                      setState(() {
                        idadeDigitada.text = idadeDigitada.text + "2";
                      });
                    },
                    //criando o container para podermos clicar e executar a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('2'),
                    ),
                  ),
                  //campo de detecao de toque
                  GestureDetector(
                    //se for tocado
                    onTap: () {
                      setState(() {
                        //acresenta valor a variavel
                        idadeDigitada.text = idadeDigitada.text + "3";
                      });
                    },
                    //container, tamanho, cor, e texto
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('3'),
                    ),
                  ),
                ],
              ),
              //criando outra linha para 3 containers
              Row(
                //children q ira receber uma lista/vetor de containers
                //ou seja vai receber 3 containers seguidos
                children: [
                  //campo para detectar toque
                  GestureDetector(
                    //se for clicado 1 vez
                    onTap: () {
                      //altera o estado da variavel
                      setState(() {
                        //add o num 4 a variavel idadedigitada
                        idadeDigitada.text = idadeDigitada.text + "4";
                      });
                    },
                    //container para executar as funcoes acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('4'),
                    ),
                  ),
                  //campo para detectar toque
                  GestureDetector(
                    //se for clicado
                    onTap: () {
                      //set state permite alterar o valor de variaveis
                      setState(() {
                        //variavel idade digitada recebe o valor 5
                        idadeDigitada.text = idadeDigitada.text + "5";
                      });
                    },
                    //container para executar a funcao acima
                    //com altura, cor e texto
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('5'),
                    ),
                  ),
                  //campo para detectar toque
                  GestureDetector(
                    //se for clicado 1 vez
                    onTap: () {
                      //set state permite alterar o valor da variavel
                      setState(() {
                        //var idadedigitada recebe o valor 6
                        idadeDigitada.text = idadeDigitada.text + "6";
                      });
                    },
                    //container tamanho, cor, texto num 6
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('6'),
                    ),
                  ),
                ],
              ),
              //criando linha
              Row(
                //children sera 3 filhos... 3 containers no caso
                children: [
                  //campo de detectar toque
                  GestureDetector(
                    //se for clicado
                    onTap: () {
                      //altera o estado da variavel
                      setState(() {
                        idadeDigitada.text = idadeDigitada.text + "7";
                      });
                    },
                    //container, tamanho, cor, texto num 7
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('7'),
                    ),
                  ),
                  //area de detectar toque
                  GestureDetector(
                    //se for tocado 1 vez
                    onTap: () {
                      //permite altera o valor/estado da variavel
                      setState(() {
                        //varialive idade digitada recebe val 8
                        idadeDigitada.text = idadeDigitada.text + "8";
                      });
                    },
                    //container, para executar a funcao acima
                    //tamanho, cor e texto
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('8'),
                    ),
                  ),
                  //campo para detectar toque
                  GestureDetector(
                    //se for tocado 1 vez
                    onTap: () {
                      //permiti alterar o estado/valor da variavel
                      setState(() {
                        //variavel recebe val 9
                        idadeDigitada.text = idadeDigitada.text + "9";
                      });
                    },
                    //container para executar funcao acima
                    //tamanho, cor e texto num 9
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.green,
                      child: Text('9'),
                    ),
                  ),
                ],
              ),
              //criando linha com 3 containers
              Row(
                children: [
                  //deteccao de toque
                  GestureDetector(
                    //se clicar 1 vez
                    onTap: () {
                      //permite alterar ovalor da variavel
                      setState(() {
                        //idadedigitada recebe val 0
                        idadeDigitada.text = idadeDigitada.text + "0";
                      });
                    },
                    //container, para exec a funcao acima...
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.red,
                      child: Text('0'),
                    ),
                  ),
                  //campo para detectar clique/toque
                  GestureDetector(
                    //se for clicado 1 vez
                    onTap: () {
                      //permite alterar o valor da variavel
                      setState(() {
                        //variavel DOUBLE IDADE recebe o q ta em idadeDigitada.TEXT
                        //pois assim podemos realizar OPERACOES MATEMATICA
                        idade = double.parse(idadeDigitada.text);
                        //SE o valor q ta na variavel IDADE for MENOR q 17
                        if (idade <= 17) {
                          //variavel RESULTADO recebe o texto VOCE E MENOR DE IDADE
                          resultado = "voce e menor de idade";
                          //caso variavel IDADE for maior q 17
                        } else {
                          //variavel resultado recebe o texto VOCE E MAIOR DE IDADE
                          resultado = "voce e maior de idade";
                        }
                      });
                    },
                    //botao/container para exec a funcao acima
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.blue,
                      child: Text('verificar'),
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
