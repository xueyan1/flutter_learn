import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      theme: ThemeData(
        primaryColor: Colors.pink[50],
      ),
      home: setRow_1(),
    );
  }
}

Row setRow_1() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Text('横向排列', textAlign: TextAlign.center),
      ),
      Expanded(
          child: Text(
        'Craft beautiful UIs',
        textAlign: TextAlign.center,
      )),
      Expanded(
        child: FittedBox(
          fit: BoxFit.contain,
          child: const FlutterLogo(),
        ),
      ),
    ],
  );
}

Row setRow_2() {
  return Row(
    children: <Widget>[
      const FlutterLogo(),
      const Expanded(
          child: Text(
              'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.')),
      const Icon(
        Icons.save,
        color: Colors.white,
      ),
    ],
  );
}
