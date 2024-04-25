import 'package:flutter/material.dart';
import 'package:my_app/presentation/card/card_page.dart';
import 'package:my_app/presentation/home/home_page.dart';
import 'package:oktoast/oktoast.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp(
        title: 'My App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/card': (context) => const CardPage(),
        },
      ),
    );
  }
}
