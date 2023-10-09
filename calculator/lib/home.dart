import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color opKeyColor = const Color(0xFFD37C1E);
  Color numKeyColor = Colors.blueGrey;
  Color topKeyColor = const Color.fromARGB(255, 100, 100, 100);
  double value = 0;
  late String currentEquation;
  int one = 1;
  int two = 2;
  int three = 3;
  int four = 4;
  int five = 5;
  int six = 6;
  int seven = 7;
  int eight = 8;
  int nine = 9;
  @override
  void initState() {
    super.initState();
    currentEquation = '${value.toString()} ';
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 221, 221, 221),
        appBar: AppBar(
          title: const Text('Calculator'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 12, 8),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2), color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            currentEquation,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: topKeyColor,
                        onPressed: () {
                          setState(() {
                            value = 0.0;
                          });
                        },
                        child: const Text('C')),
                    FloatingActionButton(
                        backgroundColor: topKeyColor,
                        onPressed: () {},
                        child: const Text('+/-')),
                    FloatingActionButton(
                        backgroundColor: topKeyColor,
                        onPressed: () {},
                        child: const Text('%')),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {},
                        child: const Text('/')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(seven.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(eight.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text('9')),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {},
                        child: Text('x')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(four.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(five.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(six.toString())),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {},
                        child: const Text('-')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(one.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {
                          setState(() {
                            currentEquation = currentEquation + two.toString();
                          });
                        },
                        child: Text(two.toString())),
                    FloatingActionButton(
                        backgroundColor: numKeyColor,
                        onPressed: () {},
                        child: Text(three.toString())),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {
                          setState(() {
                            currentEquation = currentEquation + '+';
                          });
                        },
                        child: const Text('+')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                        backgroundColor: Colors.blueGrey,
                        onPressed: () {},
                        child: const Text('0')),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {},
                        child: const Text(':)')),
                    FloatingActionButton(
                        backgroundColor: Colors.blueGrey,
                        onPressed: () {},
                        child: const Text('.')),
                    FloatingActionButton(
                        backgroundColor: opKeyColor,
                        onPressed: () {},
                        child: const Text('=')),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}