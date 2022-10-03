import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("Layout2"), Text("NBI")],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(color: Colors.green[900], width: 60, height: 30),
                  Container(width: 10),
                  Container(color: Colors.green[900], width: 60, height: 30),
                ],
              ),
              Row(
                children: [
                  Container(color: Colors.blue[900], width: 60, height: 30),
                  Container(width: 10),
                  Container(color: Colors.blue[900], width: 60, height: 30),
                ],
              ),
              Row(
                children: [
                  Container(color: Colors.yellow[900], width: 60, height: 30),
                  Container(width: 10),
                  Container(color: Colors.yellow[900], width: 60, height: 30),
                ],
              ),
            ],
          ),
        ));
  }
}
