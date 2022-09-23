import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getintro/value_controller.dart';

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

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final textControler = TextEditingController();

  final valueController = ValueController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Valor
            GetBuilder<ValueController>(
              init: valueController,
              builder: (ctrl) {
                return Text("Valor definido: $ctrl.definidoValue");
              },
            ),

            // Campo
            TextField(
              controller: textControler,
            ),

            // Botão
            ElevatedButton(
              onPressed: () {
                String value = textControler.text;

                valueController.setValue(value);
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
