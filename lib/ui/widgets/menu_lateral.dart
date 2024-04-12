import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  final List<Map> listaItens;

  const MenuLateral({required this.listaItens, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          _criarHeader(),
          _criarListItens(context)
        ],
      ),
    );
  }
  Widget _criarHeader(){
    return const DrawerHeader(child: Column(
      children: [
        Icon(Icons.calculate_rounded, size: 80),
        Text("Calculadora IMC")
      ],
    ));
  }
  Widget _criarListItens(BuildContext context){
    List<Widget> lista = [];
    for(var item in listaItens){
      lista.add(ListTile(
        title: Text(item['texto']),
        onTap: item['clique'],
      ));
    }
    return Column( children: lista );
  }
}
