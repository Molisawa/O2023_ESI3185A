import 'package:flutter/material.dart';
import 'package:repaso/page_3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required String title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _text = '';
  var _text2 = '';

  void updateText2(String text) {
    setState(() {
      _text2 = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: const Text('Repaso'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            CrossAxisAlignment.center, // Alineación horizontal al centro.
        children: <Widget>[
          const Text(
            'Bienvenidos',
            style: TextStyle(
              fontSize: 44,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/dart.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context)
                  .size
                  .width, // Utiliza el ancho completo de la pantalla.
            ),
          ),
          const SizedBox(height: 16), // Separación entre la imagen y el texto.
          const Text(
            'Seleccione la accion a realizar',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
              height: 16), // Separación entre el texto y los botones.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Button pressed ...');
                },
                child: const Text('Page 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Page3Screen(
                        onUpdateText2: (text) {
                          setState(() {
                            _text2 =
                                text; // Actualizar la variable _text2 en MyHomePage.
                          });
                        },
                      ),
                    ),
                  );
                },
                child: const Text('Page 3'),
              ),
            ],
          ),
          const SizedBox(
              height: 16), // Separación entre los botones y los textos.
          Text(
              'Page 2. => $_text'), // Utiliza la variable para mostrar el valor.
          Text(
              'Page 3. => $_text2'), // Utiliza la variable para mostrar el valor.
        ],
      ),
    );
  }
}
