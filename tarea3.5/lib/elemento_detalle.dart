import 'package:flutter/material.dart';

class ElementoDetalle extends StatefulWidget {
  final String title;
  final String imageAsset;
  final List<String> ingredients;
  final List<String> steps;

  const ElementoDetalle({
    Key? key,
    required this.title, // Agrega el título como argumento
    required this.imageAsset,
    required this.ingredients,
    required this.steps,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ElementoDetalleState createState() => _ElementoDetalleState();
}

class _ElementoDetalleState extends State<ElementoDetalle> {
  bool isFavorito = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Utiliza el título del elemento como título del AppBar
        actions: [
          IconButton(
            icon: Icon(
              isFavorito ? Icons.star : Icons.star_border,
              color: isFavorito ? Colors.amber : Colors.white,
            ),
            onPressed: () {
              setState(() {
                isFavorito = !isFavorito;
              });

              final snackBar = SnackBar(
                content: Text(
                  isFavorito ? 'Agregado a favoritos' : 'Eliminado de favoritos',
                ),
                action: SnackBarAction(
                  label: 'Deshacer',
                  onPressed: () {
                    setState(() {
                      isFavorito = !isFavorito;
                    });
                  },
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.imageAsset,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFeaa783),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.ingredients
                          .map((ingredient) => Text(
                                '- $ingredient',
                                style: const TextStyle(
                                  color: Color(0xFF736b67),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Center(
                    child: Text(
                      'Steps',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFeaa783),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: widget.steps
                          .asMap()
                          .entries
                          .map((entry) => Text(
                                '${entry.key + 1}. ${entry.value}',
                                style: const TextStyle(
                                  color: Color(0xFF736b67),
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
