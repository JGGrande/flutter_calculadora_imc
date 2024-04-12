import 'package:calculadora_imc/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calcular imc",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
