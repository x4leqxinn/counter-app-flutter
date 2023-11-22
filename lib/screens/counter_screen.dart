import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // propiedad
  int counter = 10;

  void operation(String operation) {
    switch (operation) {
      case '+':
        counter++;
        print('Seleccionaste la opción A');
        break;
      case '-':
        counter--;
        print('Seleccionaste la opción B');
        break;
      case 'reset':
        counter = 0;
        print('Seleccionaste la opción C');
        break;
      default:
        print('Opción no válida');
    }
    setState(() {});
  }

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
        floatingActionButton: CustomFloatingActions(
          operationFn: operation,
        ));
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function operationFn;

  const CustomFloatingActions({
    super.key,
    required this.operationFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => operationFn('+'),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => operationFn('reset'),
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => operationFn('-')),
      ],
    );
  }
}
