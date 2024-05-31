import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeService = Provider.autoDispose(
  (ref) => HomeService(),
);

class HomeService {
  HomeService();
}
