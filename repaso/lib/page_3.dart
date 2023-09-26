import 'package:flutter/material.dart';

class Page3Screen extends StatelessWidget {
  final void Function(String) onUpdateText2;

  Page3Screen({required this.onUpdateText2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea los botones en la parte superior.
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  onUpdateText2('(｡◕‿◕｡)');
                  Navigator.pop(context);
                },
                child: const Text('(｡◕‿◕｡)'),
              ),
              ElevatedButton(
                onPressed: () {
                  onUpdateText2('ʕ·͡ᴥ·ʔ');
                  Navigator.pop(context);
                },
                child: const Text('ʕ·͡ᴥ·ʔ'),
              ),
              ElevatedButton(
                onPressed: () {
                  onUpdateText2('¯_(ツ)_/¯');
                  Navigator.pop(context);
                },
                child: const Text('¯_(ツ)_/¯'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
