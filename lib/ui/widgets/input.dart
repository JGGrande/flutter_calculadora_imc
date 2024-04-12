import 'package:flutter/material.dart';

class Input extends StatelessWidget {

  final String texto;
  final String? prefixo;
  final TextEditingController textoControllador;

  const Input({ required this.texto, this.prefixo, required this.textoControllador, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: TextField(
          controller: textoControllador,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: texto,
            prefixText: prefixo
          ),
        ),
    );
  }
}
