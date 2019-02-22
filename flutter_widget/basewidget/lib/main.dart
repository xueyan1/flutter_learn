import 'package:flutter/material.dart';

void main() => runApp(new MyAPP());

class MyAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'container',
      theme: new ThemeData(primaryColor: Colors.pink[100]),
      home: new Center(
        child: Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          color: Colors.teal.shade700,
          alignment: Alignment.center,
          child: Text('Hello World',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white)),
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://www.example.com/images/frame.png'),
              centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
            ),
          ),
          transform: Matrix4.rotationX(50.0),
        ),
      ),
    );
  }
}
