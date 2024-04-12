import 'package:calculadora_imc/ui/widgets/mensagem_alerta.dart';
import 'package:flutter/cupertino.dart';

class CalcularImcBlock {
  var txtResultado = "";
  final BuildContext context;
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  CalcularImcBlock(this.context);

  void calcular(){
    final valorPeso = double.parse(pesoController.text);
    final valorAltura = double.parse(alturaController.text);

    final imc = valorPeso / (valorAltura * valorAltura);

    if(imc < 18.5){
      txtResultado = "Abaixo do peso normal";
      MensagemAlerta().show(
          context: context,
          titulo: "Resultado",
          texto: txtResultado
      );
      return;
    }

    if(imc <= 24.9){
      txtResultado = "Peso normal";
      MensagemAlerta().show(
          context: context,
          titulo: "Resultado",
          texto: txtResultado
      );
      return;
    }

    if(imc <= 34.9){
      txtResultado = "Excesso de pesso";
      MensagemAlerta().show(
          context: context,
          titulo: "Resultado",
          texto: txtResultado
      );
      return;
    }

    txtResultado = "Obesidade";
    MensagemAlerta().show(
        context: context,
        titulo: "Resultado",
        texto: txtResultado
    );
    return;

  }
}