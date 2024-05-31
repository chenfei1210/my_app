import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/infrastructure/model/card_item.dart';
import 'package:my_app/infrastructure/repository/card_repository.dart';

final cardService = Provider.autoDispose(
  (ref) => CardService(
    cardRepository: ref.read(cardRepository),
  ),
);

class CardService {
  CardService({
    required this.cardRepository,
  });

  final CardRepository cardRepository;

  Future<List<CardItem>> fetchCardItemAll() async {
    return await cardRepository.fetchCardItemAll();
  }

  Future<List<CardItem>> getCardItemByNumber(String number) async {
    return await cardRepository.getCardItemByNumber(number);
  }

  Future<List<CardItem>> searchCardItemByNumber(String number) async {
    return await cardRepository.searchCardItemByNumber(number);
  }
}
