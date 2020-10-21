import 'dart:math';

import 'package:dell_calculadora/botoes.dart';
import 'package:dell_calculadora/calculadora_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() async {
  runApp(MaterialApp(
    home: Calculadora(),
  ),
  );
}
class Calculadora extends StatelessWidget{

  final CalculadoraController calculadoraController = CalculadoraController();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
                'Calculadora',style: TextStyle(color: Colors.white,fontSize: 30)
            ),
          ),
        ),
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.all(45),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Container(
                          height: 40,
                        ),
                      ),

                      //tela
                      Observer(
                        builder:(_)=> Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                          child: Container(
                            color: Colors.blue,
                            child: Center(child: Text(calculadoraController.tela, style: TextStyle(color: Colors.white,fontSize: 20))),
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          height: 80,
                        ),
                      ),

                      //botoes
                      Observer(
                        builder:(_)=> Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                          child: Container(
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    //7
                                    BotaoCalculadora(conteudo:'7',
                                    onPressed: (){
                                      calculadoraController.botaoNumerico('7');
                                    },
                                    ),
                                    //8
                                    BotaoCalculadora(conteudo:'8',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('8');
                                      },
                                    ),
                                    //9
                                    BotaoCalculadora(conteudo:'9',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('9');
                                      },
                                    ),
                                    // /
                                    BotaoCalculadora(conteudo:'/',
                                      onPressed: (){
                                        calculadoraController.botaoOpera('/');
                                      },
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    //4
                                    BotaoCalculadora(conteudo:'4',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('4');
                                      },
                                    ),
                                    //5
                                    BotaoCalculadora(conteudo:'5',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('5');
                                      },
                                    ),
                                    //6
                                    BotaoCalculadora(conteudo:'6',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('6');
                                      },
                                    ),
                                    //*
                                    BotaoCalculadora(conteudo:'*',
                                      onPressed: (){
                                        calculadoraController.botaoOpera('*');
                                      },
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    //1
                                    BotaoCalculadora(conteudo:'1',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('1');
                                      },
                                    ),
                                    //2
                                    BotaoCalculadora(conteudo:'2',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('2');
                                      },
                                    ),
                                    //3
                                    BotaoCalculadora(conteudo:'3',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('3');
                                      },
                                    ),
                                    //-
                                    BotaoCalculadora(conteudo:'-',
                                      onPressed: (){
                                        calculadoraController.botaoOpera('-');
                                      },
                                    ),

                                  ],
                                ),
                                Row(
                                  children: [
                                    //0
                                    BotaoCalculadora(conteudo:'0',
                                      onPressed: (){
                                        calculadoraController.botaoNumerico('0');
                                      },
                                    ),
                                    //Limpar
                                    BotaoCalculadora(conteudo:'Clear',
                                      onPressed: (){
                                        calculadoraController.limpaTela();
                                      },
                                    ),
                                    //=
                                    BotaoCalculadora(conteudo:'=',
                                      onPressed: (){
                                        calculadoraController.calculaTela();
                                      },
                                    ),
                                    //+
                                    BotaoCalculadora(conteudo:'+',
                                      onPressed: (){
                                        calculadoraController.botaoOpera('+');
                                      },
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}