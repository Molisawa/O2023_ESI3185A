import 'package:flutter/material.dart';
import 'package:info_lugar/info_lugar.dart';
import 'package:info_lugar/item_actividad.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  static final List<String> nombresDeLugares = [
    "Seminyak Beach",
    "Nusa Dua Beach",
    "Echo Beach (Canggu)",
    "Jimbaran Bay",
    "Thomas Beach",
    "Sanur Beach",
    "Keramas Beach",
    "Amed Beach",
    "Bingin Beach",
    "Sundays Beach Club"
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20), // Esquinas redondeadas inferiores
                    bottomRight: Radius.circular(20), // Esquinas redondeadas inferiores
                    topLeft: Radius.circular(20), // Esquinas redondeadas superiores
                    topRight: Radius.circular(20), // Esquinas redondeadas superiores
                  ),
                  child: Image.asset(
                    'assets/images/balis_beach.jpg', // Cambia por la ruta de tu imagen
                    height: constraints.maxHeight / 4, // Altura igual a la cuarta parte del espacio disponible
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad(
                            index: index + 1,
                            day: 'Day ${index + 1}',
                            lugar: nombresDeLugares[index],
                          );
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        // Mostrar un SnackBar al presionar el botón
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Reservación en progreso'),
                          ),
                        );
                      },
                      child: Text("Start booking"),
                      textColor: Colors.white,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
