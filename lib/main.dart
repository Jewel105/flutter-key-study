import 'package:flutter/material.dart';
import 'package:key_study/box_ful_wiget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  // List<Widget> boxes = [
  //   BoxLessWiget(
  //     title: 'box1',
  //     key: UniqueKey(),
  //   ),
  //   BoxLessWiget(
  //     title: 'box2',
  //     key: UniqueKey(),
  //   ),
  // ];

  List<Widget> boxes = [
    BoxFulWiget(
      title: 'box1',
      key: UniqueKey(),
    ),
    BoxFulWiget(
      title: 'box2',
      key: UniqueKey(),
    ),
  ];

  var keyData1 = {'box2': "1"};
  var keyData2 = {'box2': "2"};

  void swapBoxs() {
    boxes = [
      BoxFulWiget(
        title: 'box2',
        key: ObjectKey(keyData1),
      ),
      BoxFulWiget(
        title: 'box1',
        key: ObjectKey(keyData2),
      ),
    ];
    // boxes.insert(1, boxes.removeAt(0));
    // boxes.insert(1, boxes.removeAt(0));
    // boxes.removeAt(0);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: boxes,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: swapBoxs,
        child: const Icon(Icons.currency_exchange),
      ),
    );
  }
}
