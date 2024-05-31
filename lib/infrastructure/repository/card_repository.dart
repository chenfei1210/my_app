import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/infrastructure/data_source/card_data_source.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

final cardRepository = Provider(
  (ref) => CardRepository(cardDataSource: CardDataSource()),
);

/// Card 画面の Repository
class CardRepository {
  CardRepository({required this.cardDataSource});

  final CardDataSource cardDataSource;

  /// ローカル DB から Card 一覧を取得する
  Future<List<CardItem>> fetchCardItemAll() async {
    return await cardDataSource.select(where: '1 = 1');
  }

  /// Card number から Card 単体を取得
  Future<List<CardItem>> getCardItemByNumber(String number) async {
    return await cardDataSource.select(where: 'number = $number');
  }

  /// Card number から Card 単体を検索
  Future<List<CardItem>> searchCardItemByNumber(String number) async {
    return await cardDataSource.select(where: '''
    number LIKE '%$number%'
    ''');
  }
}
