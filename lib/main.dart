import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Rows and Columns'),
          ),
          backgroundColor: Colors.indigo[100],
          body: Home()),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    List<Widget> createSquares(int numSquares) {
      int i = 0;
      List colors = [
        Colors.amber,
        Colors.deepPurple,
        Colors.deepOrange,
        Colors.indigo,
        Colors.lightBlue
      ];

      List<Widget> squares = [];
      while (i < numSquares) {
        Container square = Container(
          color: colors[i],
          width: 60,
          height: 60,
          child: Text(i.toString()),
        );
        i++;
        squares.add(square);
      }
      return squares;
    }

    return Container(
      width: sizeX,
      height: sizeY,
      child: Row(
        children: createSquares(5),
      ),
    );
  }
}
