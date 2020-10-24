import 'package:mobx/mobx.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = CalculadoraControllerBase
    with _$CalculadoraController;

abstract class CalculadoraControllerBase with Store {
  @observable
  bool calculado = false;

  @observable
  bool sinalOn = false;

  @observable
  String numero1 = '';

  @observable
  String numero2 = '';

  @observable
  int contador = 0;

  @observable
  String tela = '';

  @observable
  String sinal = 'nada';

  @action
  void botaoNumerico(String conteudo) {
    if (calculado == false) {
      if (sinalOn == false) {
        numero1 += conteudo;
      } else {
        numero2 += conteudo;
      }
      tela += conteudo;
      contador += 1;
    }
  }

  @action
  void botaoOpera(String conteudo) {
    if (contador != 0) {
      if (sinalOn == false) {
        tela += conteudo;
        sinal = conteudo;
        contador += 1;
        sinalOn = true;
      }
    }
  }

  @action
  void limpaTela() {
    contador = 0;
    numero1 = '';
    numero2 = '';
    sinalOn = false;
    sinal = 'nada';
    tela = '';
    calculado = false;
  }

  @action
  void calculaTela() {
    if (sinalOn == true) {
      if (calculado == false) {
        if (numero2 != '') {
          switch (sinal) {
            case '+':
              {
                var calculo = int.parse(numero1) + int.parse(numero2);
                tela += ' = $calculo';
                calculado = true;
              }
              break;
            case '-':
              {
                var calculo = int.parse(numero1) - int.parse(numero2);
                tela += ' = $calculo';
                calculado = true;
              }
              break;
            case '*':
              {
                var calculo = int.parse(numero1) * int.parse(numero2);
                tela += ' = $calculo';
                calculado = true;
              }
              break;
            case '/':
              {
                if (int.parse(numero2) == 0) {
                  break;
                }
                var calculo = int.parse(numero1) / int.parse(numero2);
                tela += ' = $calculo';
                calculado = true;
              }
              break;
            default:
              {
                break;
              }
          }
        }
      }
    }
  }
}
