import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/presentation/home/home_page.dart';
import 'package:my_app/presentation/settings/settings_page.dart';

final navigationBarSelectedIndexNotifierProvider = StateProvider((ref) => 0);

enum PrimaryBottomNavigationBarItem {
  home(
    navigationIndex: 0,
    text: HomePage.pageName,
    icon: Icon(Icons.home),
    routePath: HomePage.routePath,
    routeName: HomePage.routeName,
  ),
  settings(
    navigationIndex: 1,
    text: SettingsPage.pageName,
    icon: Icon(Icons.settings),
    routePath: SettingsPage.routePath,
    routeName: SettingsPage.routeName,
  );

  const PrimaryBottomNavigationBarItem({
    required this.navigationIndex,
    required this.text,
    required this.icon,
    required this.routePath,
    required this.routeName,
  });

  /// BottomNavigationBar 上の Index
  final int navigationIndex;

  /// アイコンのテキスト
  final String text;

  /// アイコン
  final Widget icon;

  /// 遷移先の routePath
  final String routePath;

  /// 遷移先の routeName
  final String routeName;
}

class PrimaryBottomNavigationBar extends ConsumerWidget {
  const PrimaryBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationBarSelectedIndexNotifierProvider);

    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (value) {
        if (selectedIndex == value) {
          return;
        }
        ref.watch(navigationBarSelectedIndexNotifierProvider.notifier).state =
            value;
        context.goNamed(PrimaryBottomNavigationBarItem.values[value].routeName);
      },
      items: PrimaryBottomNavigationBarItem.values
          .map((e) => BottomNavigationBarItem(
                label: e.text,
                icon: e.icon,
              ))
          .toList(),
    );
  }
}
