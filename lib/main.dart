import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Zikirmatik"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text('$_count'),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => setState(() => _count++),
                child: Icon(Icons.add),
              ),
            ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => setState(() => _count = 0), label: Text('Sıfırla')),
    );
  }
}
