import 'package:calculadora_imc/bloc/calcular_imc_block.dart';
import 'package:calculadora_imc/ui/pages/abbout_page.dart';
import 'package:calculadora_imc/ui/widgets/input.dart';
import 'package:calculadora_imc/ui/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _abrirAbbout(){
    Navigator.push(context, MaterialPageRoute(
        builder: (context) => const AbboutPage()
    ));
  }

  @override
  Widget build(BuildContext context) {
    var calcBlock = CalcularImcBlock(context);

    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.calculate_rounded, color: Colors.white,),
              SizedBox(width: 8,),
              Text("Calculadora de IMC", style: TextStyle(color: Colors.white),)
            ],
          ),
          backgroundColor: Colors.blueAccent.shade200,
        ),
        drawer: MenuLateral(listaItens: [
          { "texto": "Dados academicos", "clique": _abrirAbbout }
        ],),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Input(texto: "Peso", textoControllador: calcBlock.pesoController),
            Input(texto: "Altura", textoControllador: calcBlock.alturaController),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    calcBlock.calcular();
                  });
                },
                child: const Text("Calcular")
            )
          ],
        ),
      ),
    );
  }
}
