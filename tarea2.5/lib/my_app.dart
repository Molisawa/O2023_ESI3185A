import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tip Time',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const TipCalculator(),
    );
  }
}

class TipCalculator extends StatefulWidget {
  const TipCalculator({Key? key}) : super(key: key);

  @override
  _TipCalculatorState createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {
  TextEditingController billController = TextEditingController();
  double tipPercentage = 0.2;
  bool roundTip = false;
  double totalTip = 0.0;

  void calculateTip() {
    if (billController.text.isEmpty) {
      // Muestra un diálogo de advertencia si el TextField está vacío.
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Warning'),
            content: const Text('Please enter a cost of service.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('ACCEPT'),
              ),
            ],
          );
        },
      );
      return;
    }

    double billAmount = double.parse(billController.text);
    double tipAmount = billAmount * tipPercentage;

    if (roundTip) {
      totalTip = tipAmount.ceil().toDouble();
    } else {
      totalTip = tipAmount;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tip Time'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.store, color: Colors.green), // Icono en verde
                const SizedBox(
                    width: 8), // Espacio entre el icono y el TextField
Flexible(
  child: TextField(
    controller: billController,
    keyboardType: TextInputType.number, // Establecer el teclado numérico
    decoration: const InputDecoration(
      labelText: 'Cost of Service',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      border: OutlineInputBorder(),
    ),
  autofocus: false,
  ),
),

              ],
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star, color: Colors.green), // Icono en verde
                    SizedBox(width: 8), // Espacio entre el icono y el texto
                    Text('How was the service?'),
                  ],
                ),
                Column(
                  children: [
                    RadioListTile(
                      title: const Text('Amazing (20%)'),
                      value: 0.2,
                      groupValue: tipPercentage,
                      onChanged: (value) {
                        setState(() {
                          tipPercentage = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Good (18%)'),
                      value: 0.18,
                      groupValue: tipPercentage,
                      onChanged: (value) {
                        setState(() {
                          tipPercentage = value!;
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text('Okay (15%)'),
                      value: 0.15,
                      groupValue: tipPercentage,
                      onChanged: (value) {
                        setState(() {
                          tipPercentage = value!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.arrow_outward,
                    color: Colors.green), // Icono en verde
                const Text('Round up tip?'),
                const Spacer(), // Espacio flexible para mover el Switch a la derecha
                Switch(
                  value: roundTip,
                  onChanged: (value) {
                    setState(() {
                      roundTip = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double
                  .infinity, // Ancho del contenedor igual al ancho de la pantalla
              child: ElevatedButton(
                onPressed: calculateTip,
                child: const Text('CALCULATE'),
              ),
            ),
            const SizedBox(height: 8), // Espacio adicional
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Tip Amount: \$${totalTip.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
