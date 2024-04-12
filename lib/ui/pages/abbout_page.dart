import 'package:flutter/material.dart';

class AbboutPage extends StatefulWidget {
  const AbboutPage({super.key});

  @override
  State<AbboutPage> createState() => _AbboutPageState();
}

class _AbboutPageState extends State<AbboutPage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
          appBar: AppBar(
            title: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.calculate_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Calculadora de IMC",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            backgroundColor: Colors.blueAccent.shade200,
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50), // ajuste o valor conforme necessário
                    child: Image.network(
                      "https://avatars.githubusercontent.com/u/106830297?v=1=5",
                      width: 100, // ajuste a largura conforme necessário
                      height: 100, // ajuste a altura conforme necessário
                      fit: BoxFit.cover, // ajuste o ajuste conforme necessário
                    ),
                  ),
                ),
                const Text("João Gabriel Grande",
                    style: TextStyle(
                      fontSize: 32,
                    )),
                const Text("12225",
                    style: TextStyle(
                      fontSize: 32,
                    ))
              ],
            ),
          )),
    );
  }
}
