import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 109, 197, 219)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mc Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isTimerSelected = false;
  bool isAccesibilitySelected = false;
  bool isAndroidSelected = false;
  bool isAppleSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle, size: 50),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Flutter McFlutter',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Experienced App Developer',
                              style: TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('123 Main Street'),
                        Text('(415) 555-0198'),
                      ],
                    ),
                    const SizedBox(height: 8),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAccesibilitySelected = !isAccesibilitySelected;
                            });
                            const snackBar = SnackBar(content: Text('Accessibility Button Pressed'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Icon(
                            Icons.accessibility,
                            color: isAccesibilitySelected ? Colors.indigo : Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isTimerSelected = !isTimerSelected;
                            });
                            const snackBar = SnackBar(content: Text('Timer Button Pressed'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Icon(
                            Icons.timer,
                            color: isTimerSelected ? Colors.indigo : Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAndroidSelected = !isAndroidSelected;
                            });
                            const snackBar = SnackBar(content: Text('Android Button Pressed'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Icon(
                            Icons.phone_android,
                            color: isAndroidSelected ? Colors.indigo : Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAppleSelected = !isAppleSelected;
                            });
                            const snackBar = SnackBar(content: Text('Apple Button Pressed'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          },
                          child: Icon(
                            Icons.phone_iphone,
                            color: isAppleSelected ? Colors.indigo : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
