import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// 화면
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int num = 1;

  void Increase() {
    // setState없이 num++ 로는 rebuild가 안됨.
    setState(() {
      // 값을 변경하면서 rebuild가 되게 함.
      num++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: AComponent(num)),
          Expanded(child: BComponent(Increase)),
          // Increase를 전달하는거.
        ],
      ),
    );
  }
}

// 컨슈머
class AComponent extends StatelessWidget {
  final int num;
  const AComponent(this.num, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Column(
        children: [
          Text("AComponent"),
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

// 서플라이어 ( 공급자 )
class BComponent extends StatelessWidget {
  final Function Increase;
  const BComponent(this.Increase, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          Text("BComponent"),
          Expanded(
            child: Align(
              child: ElevatedButton(
                onPressed: () {
                  Increase();
                },
                child: Text(
                  "숫자증가",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
