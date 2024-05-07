import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/infrastructure/model/card_item.dart';
import 'package:my_app/infrastructure/repository/info_repository.dart';

final cardService = Provider.autoDispose(
  (ref) => CardService(
    infoRepository: ref.read(infoRepository),
  ),
);

class CardService {
  CardService({
    required this.infoRepository,
  });

  final InfoRepository infoRepository;

  Future<List<CardItem>> getCardInfo() async {
    return (await infoRepository.getInfoData()).cardList;
  }
}
