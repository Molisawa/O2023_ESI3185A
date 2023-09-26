import 'package:flutter/material.dart';
import 'elemento_menu.dart';
import 'elemento_detalle.dart'; // Asegúrate de importar la clase ElementoDetalle

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick & Easy'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElementoDetalle(
                    imageAsset: 'assets/images/spagetti.jpeg',
                    ingredients: [
                      '4 Tomatoes',
                      '1 Tablespoon of Olive Oil',
                      '1 Onion',
                      '250g Spaghetti',
                      'Spices',
                      'Cheese (optional)',
                      // Agrega más ingredientes
                    ],
                    steps: [
                      'Cut the tomatoes and the onion into small pieces.',
                      'Boil some water - add salt to it once it boils.',
                      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
                      'In the meantime, heaten up some olive oil and add the cut onion.',
                      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
                      'The sauce will be done once the spaghetti are.',
                      'Feel free to add some cheese on top of the finished dish.'
                      // Agrega más pasos
                    ], title: 'Spaghetti with Tomato Sauce',
                  ),
                ),
              );
            },
            child: const ElementoMenu(
              imageAsset: 'assets/images/spagetti.jpeg',
              title: 'Spaghetti with Tomato Sauce',
              time: '20 min',
              difficulty: 'Simple',
              price: 'Affordable',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElementoDetalle(
                    imageAsset: 'assets/images/toast_hawaii.jpeg',
                    ingredients: [
                      'Ingredient 1',
                      'Ingredient 2',
                      // Agrega más ingredientes
                    ],
                    steps: [
                      'Step 1: Do something',
                      'Step 2: Do something else',
                      // Agrega más pasos
                    ], title: 'Toast Hawaii',
                  ),
                ),
              );
            },
            child: const ElementoMenu(
              imageAsset: 'assets/images/toast_hawaii.jpeg',
              title: 'Toast Hawaii',
              time: '10 min',
              difficulty: 'Simple',
              price: 'Affordable',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElementoDetalle(
                    imageAsset: 'assets/images/classic_h.jpeg',
                    ingredients: [
                      'Ingredient 1',
                      'Ingredient 2',
                      // Agrega más ingredientes
                    ],
                    steps: [
                      'Step 1: Do something',
                      'Step 2: Do something else',
                      // Agrega más pasos
                    ], title: 'Classic Hamburger',
                  ),
                ),
              );
            },
            child: const ElementoMenu(
              imageAsset: 'assets/images/classic_h.jpeg',
              title: 'Classic Hamburger',
              time: '20 min',
              difficulty: 'Simple',
              price: 'Pricey',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ElementoDetalle(
                    imageAsset: 'assets/images/salad.jpeg',
                    ingredients: [
                      'Ingredient 1',
                      'Ingredient 2',
                      // Agrega más ingredientes
                    ],
                    steps: [
                      'Step 1: Do something',
                      'Step 2: Do something else',
                      // Agrega más pasos
                    ], title: 'Ceasar Salad',
                  ),
                ),
              );
            },
            child: const ElementoMenu(
              imageAsset: 'assets/images/salad.jpeg',
              title: 'Ceasar Salad',
              time: '20 min',
              difficulty: 'Simple',
              price: 'Pricey',
            ),
          ),
          // Agrega más elementos ElementoMenu aquí
        ],
      ),
    );
  }
}
