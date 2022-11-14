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
    return Container(
      child: Row(
        children: [
          ab(),
          c(),
        ],
      ),
    );
  }
}

class ab extends StatefulWidget {
  const ab({Key? key}) : super(key: key);

  @override
  State<ab> createState() => _abState();
}

class _abState extends State<ab> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
