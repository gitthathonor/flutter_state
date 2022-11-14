import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ab()),
        Expanded(child: C_com()),
      ],
    );
  }
}

class ab extends StatefulWidget {
  const ab({Key? key}) : super(key: key);

  @override
  State<ab> createState() => _abState();
}

class _abState extends State<ab> {
  int num = 1;

  void increase() {
    setState(() {
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: A_com(num)),
          Expanded(child: B_com(increase)),
        ],
      ),
    );
  }
}

// 컨슈머
class A_com extends StatelessWidget {
  const A_com(this.num, {Key? key}) : super(key: key);
  final int num;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Text("A"),
          Expanded(
            child: Align(
              child: Text(
                "$num",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class B_com extends StatelessWidget {
  final Function increase;
  const B_com(this.increase, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text("B"),
          ElevatedButton(
            onPressed: () {
              increase();
            },
            child: Text(
              "숫자증가",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class C_com extends StatelessWidget {
  const C_com({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text("C"),
    );
  }
}
