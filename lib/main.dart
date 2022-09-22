import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final textControler = TextEditingController();

  String definidoValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Valor
            Text("Valor definido: $definidoValue"),

            // Campo
            TextField(
              controller: textControler,
            ),

            // Botão
            ElevatedButton(
              onPressed: () {
                String value = textControler.text;

                setState(() {
                  definidoValue = value;
                });
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
