import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/domain/home/home_service.dart';
import 'package:my_app/domain/home/home_state.dart';

final homeNotifierProvider =
    StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(
    homeService: ref.read(homeService),
  )..init(),
);

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier({
    required this.homeService,
  }) : super(const HomeState());

  final HomeService homeService;

  Future<void> init() async {}
}
