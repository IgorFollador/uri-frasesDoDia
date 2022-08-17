import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _frases = [
    "Como dizia o velho e conhecido ditado: crie uma cobra e eu te direi quem és!",
    "Nunca abuse de um homem caído, afinal, ele pode se levantar.",
    "Desistir é para os fracos. Faça como eu, nem tente.",
    "Nunca cometa um erro duas vezes.Cometa umas 5,só pra ter certeza"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/frasesDoDia.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                    onPressed: _gerarFrase, child: Text("Nova frase"))
              ],
            ),
          ),
        ));
  }
}
