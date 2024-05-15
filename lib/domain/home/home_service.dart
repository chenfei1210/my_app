import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/infrastructure/repository/info_repository.dart';

final homeService = Provider.autoDispose(
  (ref) => HomeService(
    infoRepository: ref.read(infoRepository),
  ),
);

class HomeService {
  HomeService({
    required this.infoRepository,
  });

  final InfoRepository infoRepository;

  Future<int> getInfoVersion() async {
    return (await infoRepository.getInfoData()).version;
  }
}
