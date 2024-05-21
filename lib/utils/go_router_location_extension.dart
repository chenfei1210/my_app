import 'package:go_router/go_router.dart';

/// GoRouter から現在の location を取得する
/// GoRouterState の location が go_router v4.5.1 -> v7 系への update 契機で push/pop での更新がされなくなった
/// https://github.com/flutter/flutter/issues/133237
/// 
/// v9 への migration 手順記載の work around が有効だったため、対応実施
/// go_router の内部実装の依存しているので、今後の version up で動作しなくなる可能性あり
/// https://docs.google.com/document/d/16plvWc9ablQsUs7w6bWDpTZ7PwMP4YUhV-qMQ3iljE0/edit
extension GoRouterLocation on GoRouter {
  Uri get _uri {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri;
  }

  /// 現在の location を取得する
  String get location => _uri.toString();

  /// 現在の location から query を取り除いた path を取得する
  String get locationPath => _uri.path;

  /// 現在の location から query を取得する
  Map<String, String> get locationQueryParameters => _uri.queryParameters;
}
