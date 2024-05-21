import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app/presentation/card/card_page.dart';
import 'package:my_app/presentation/component/application_footer_area.dart';
import 'package:my_app/presentation/home/home_page.dart';
import 'package:my_app/presentation/settings/settings_page.dart';
import 'package:my_app/utils/go_router_location_extension.dart';

/// PrimaryBottomNavigationBar を表示したい画面のフルパスを記載する
const showPrimaryBottomNavigationBarPageFullPathList = [
  /// ホーム
  HomePage.routePath,

  /// 設定
  SettingsPage.routePath,
];

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: HomePage.routePath,
  routes: [
    ShellRoute(
      pageBuilder: (context, state, child) {
        final path = GoRouter.of(context).locationPath;
        return MaterialPage(
            child: ApplicationFooterArea(
          path: path,
          isShowBottomNavigator:
              showPrimaryBottomNavigationBarPageFullPathList.contains(path),
          child: child,
        ));
      },
      routes: [
        routerHome,
        routerSettings,
      ],
    ),
  ],
);

final routerHome = GoRoute(
  name: HomePage.routeName,
  path: HomePage.routePath,
  pageBuilder: (context, state) => const NoTransitionPage(child: HomePage()),
  routes: [
    GoRoute(
      name: CardPage.routeName,
      path: CardPage.routePath,
      builder: (context, state) => const CardPage(),
    ),
  ],
);

final routerSettings = GoRoute(
  name: SettingsPage.routeName,
  path: SettingsPage.routePath,
  pageBuilder: (context, state) =>
      const NoTransitionPage(child: SettingsPage()),
  routes: const [],
);
