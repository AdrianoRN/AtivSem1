import 'package:flutter/material.dart';
//Importando a biblioteca responsavel pelos
//componentes graficos da aplicação

void main() {
// Função principal do dart

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Iniciando o widget "MaterialApp" que cria
  //vários widgets na raiz do aplicativo.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //Tema da aplicação
        //ao executar o aplicativo tera uma barra azul

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Atividades Semana I DevMovel II'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Este widget é a página inicial do aplicativo. É stateful, ou seja,
  // que possui um objeto State que contém campos que afetam
  // como fica.
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 20;

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Contador Decrescente:',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Shadows',
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.remove),
      ),
    );
  }
}
