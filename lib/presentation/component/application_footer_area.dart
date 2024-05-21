import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/presentation/component/primary_bottom_navigation_bar.dart';

class ApplicationFooterArea extends ConsumerWidget {
  const ApplicationFooterArea({
    required this.path,
    required this.isShowBottomNavigator,
    required this.child,
    super.key,
  });

  final String path;
  final bool isShowBottomNavigator;
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          child,
          if (isShowBottomNavigator) PrimaryBottomNavigationBar(),
          Text(path),
        ],
      ),
    );
  }
}
