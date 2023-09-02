import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int likeCount = 0;
  bool isCorreoButtonColored = false;
  bool isInfoButtonColored = false;
  bool isUbicacionButtonColored = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Iteso',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Iteso'),
        ),
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(
                    "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"),
                ListTile(
                  title: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("El ITESO, universidad jesuita de guadalajara",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("San Pedro Tlaquepaque, Jal",
                                style: TextStyle(fontWeight: FontWeight.w200)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                likeCount = likeCount == 0 ? 1 : 0;
                              });
                            },
                            icon: const Icon(Icons.thumb_up),
                            color: likeCount == 1 ? Colors.blue : Colors.black,
                          ),
                          Text(likeCount.toString()),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: 48,
                          onPressed: () {
                            setState(() {
                              isCorreoButtonColored = !isCorreoButtonColored;
                              isInfoButtonColored = false;
                              isUbicacionButtonColored = false;
                            });
                            // Muestra un Snackbar
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Puedes encontrar comida en sus cafeterías.'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.mail),
                          color: isCorreoButtonColored
                              ? Colors.indigo
                              : Colors.black,
                        ),
                        const Text("Correo"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 48,
                          onPressed: () {
                            setState(() {
                              isInfoButtonColored = !isInfoButtonColored;
                              isCorreoButtonColored = false;
                              isUbicacionButtonColored = false;
                            });
                            // Muestra un Snackbar
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Puedes pedir información en rectoría.'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.phone),
                          color:
                              isInfoButtonColored ? Colors.indigo : Colors.black,
                        ),
                        const Text("Llamada"),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 48,
                          onPressed: () {
                            setState(() {
                              isUbicacionButtonColored =
                                  !isUbicacionButtonColored;
                              isCorreoButtonColored = false;
                              isInfoButtonColored = false;
                            });
                            // Muestra un Snackbar
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Se encuentra ubicado en Periférico Sur 8585'),
                              ),
                            );
                          },
                          icon: const Icon(Icons.directions),
                          color: isUbicacionButtonColored
                              ? Colors.indigo
                              : Colors.black,
                        ),
                        const Text("Ruta"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 64,
                ),
                const Text(
                  '''El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente) es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.

                  La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara''',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
