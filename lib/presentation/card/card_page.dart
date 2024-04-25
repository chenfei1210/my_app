import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/infrastructure/model/card_item.dart';
import 'package:my_app/infrastructure/model/info.dart';
import 'package:my_app/presentation/card/card_view/card_widget.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  late Future<Info> response;

  @override
  void initState() {
    super.initState();
    response = Future(
      () async => Info.fromJson(
        jsonDecode(
          await rootBundle.loadString('json/info.json'),
        ),
      ),
    );
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
          final List<CardItem> cardInfoList = (snapshot.data as Info).cardList;
          return Column(
            children: cardInfoList
                .map(
                  (cardInfo) => SizedBox(
                    width: 400,
                    child: CardWidget(cardItem: cardInfo),
                  ),
                )
                .toList(),
          );
        }
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Card'),
      ),
      body: Center(child: bodyWidget),
    );
  }
}
