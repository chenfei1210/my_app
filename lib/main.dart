import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  late Future response;

  @override
  void initState() {
    super.initState();
    response = Future(() async => jsonDecode(await rootBundle.loadString('json/info.json')));
  }

  @override
  Widget build(BuildContext context) {
    final bodyWidget = FutureBuilder(
      future: response,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error');
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Waiting");
        } else {
          return Text((snapshot.data).toString());
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: bodyWidget,
    );
  }
}
