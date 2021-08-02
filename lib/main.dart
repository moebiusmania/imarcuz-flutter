import 'package:flutter/material.dart';
import 'dart:math';

var list = [
  "Mangi gratis se fai il becchino!",
  "Se io fossi Mosche, che vuole fare la vita che vorrebbe fare, sicuramente farei quello che pensa",
  "Gli stivaletti di Hello Kitty li voglio anche io!",
  "Se avessi 14 anni starei in riformatorio aspettando i 18... cosi passo in carcere",
  "Ormai essere Mosca porta sfiga!",
  "Piuttosto mi faccio questo tavolino!",
  "Non puoi fare uno stronzo più grande di te!",
  "Non le posso mangiare, ho un patto con le olive!",
  "La mia filosofia è: mai andarci con una che ce l'ha più lungo del tuo"
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iMarcuz',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'iMarcuz'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _current = (list..shuffle()).first;

  void _shuffleItem() {
    setState(() {
      _current = (list..shuffle()).first;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_current',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _shuffleItem,
        tooltip: 'Cambia frase',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
