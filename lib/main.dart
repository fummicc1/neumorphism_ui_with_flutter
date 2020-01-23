import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(child: NeumorphismWidget()),
        backgroundColor: Color(0xFF55b9f3),
      ),
    );
  }
}

class NeumorphismWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget child = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "images/img.JPG",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: Text(
              "ふみっち",
              style: Theme.of(context).textTheme.display1.apply(fontWeightDelta: 4, color: Color(0xFF62d5ff)),
            ),
          ),
        ],
      ),
    );
    final Color firstColor = Color(0xFF5bc6ff);
    final Color secondColor = Color(0xFF4da7db);

    return Container(
      height: 300,
      width: 300,
      child: child,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(-5, -5),
              end: Alignment(5, 5),
              colors: [firstColor, secondColor]),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF489dcf),
                offset: Offset(10.0, 10.0),
                blurRadius: 32,
                spreadRadius: 4),
            BoxShadow(
                color: Color(0xFF62d5ff),
                offset: Offset(-10.0, -10.0),
                blurRadius: 32,
                spreadRadius: 4)
          ]),
    );
  }
}
