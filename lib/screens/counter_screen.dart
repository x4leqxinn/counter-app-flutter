import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // propiedad
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    const customFont = TextStyle(fontSize: 30);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Screen'),
          elevation: 0,
        ),
        backgroundColor: Colors.pink,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text('Clicks counter', style: customFont),
              Text('$counter', style: customFont),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.exposure_plus_1_outlined),
              onPressed: () {
                counter++;
                setState(() {}); // Redibuja el widget para detectar los cambios
              },
            ),
            const SizedBox(
              // Caja invisible para separar botones
              width: 20,
            ),
            FloatingActionButton(
              child: const Icon(Icons.exposure_outlined),
              onPressed: () {
                counter = 0;
                setState(() {}); // Redibuja el widget para detectar los cambios
              },
            ),
            const SizedBox(
              // Caja invisible para separar botones
              width: 20,
            ),
            FloatingActionButton(
              child: const Icon(Icons.exposure_minus_1_outlined),
              onPressed: () {
                counter--;
                setState(() {}); // Redibuja el widget para detectar los cambios
              },
            ),
          ],
        ));
  }
}
