import 'package:flutter/material.dart';

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
    final _buttonStyle = ElevatedButton.styleFrom(
        primary: Colors.black45,
        textStyle: const TextStyle(fontSize: 24),
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: ElevatedButton(
                  onPressed: _shuffleItem,
                  child: Text(
                    "$_current",
                    textAlign: TextAlign.center,
                  ),
                  style: _buttonStyle,
                ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50.0, bottom: 80),
                    child: ElevatedButton(
                      onPressed: _shuffleItem,
                      child: Text("Un'altra frase!"),
                      style: _buttonStyle,
                    ))
              ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
