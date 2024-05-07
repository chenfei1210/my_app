import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/infrastructure/data_source/local_info_data_source.dart';
import 'package:my_app/infrastructure/model/info.dart';

final infoRepository = Provider(
  (ref) => InfoRepository(),
);

/// Infoを管理するリポジトリ
class InfoRepository {
  /// Cache: Info
  Info? _infoData;

  /// DataSource
  final LocalInfoDataSource _localInfoDataSource = LocalInfoDataSource();

  Future<Info> getInfoData() async {
    // 1. Cacheからデータを取得する
    if (_infoData != null) {
      return _infoData!;
    }

    // 2. Cacheにデータがない場合、サーバーからデータを取得する
    final serverInfoFile = await _fetchInfoFromServer();
    // キャッシュに設定値を保存して終了
    if (serverInfoFile != null) {
      _infoData = serverInfoFile;
      return serverInfoFile;
    }

    // 3. serverからデータ取得に失敗した場合、ローカルから取得する
    final localInfoFile = await _fetchInfoFromLocal();
    // キャッシュに設定値を保存して終了
    if (localInfoFile != null) {
      _infoData = localInfoFile;
      return localInfoFile;
    }
    throw Exception('Failed Get Info Data');
  }

  /// serverから設定ファイルを取得
  // TODO
  Future<Info?> _fetchInfoFromServer() async {
    return null;
  }

  /// ローカルから設定ファイルを取得
  Future<Info?> _fetchInfoFromLocal() async {
    // TODO test code
    await Future.delayed(const Duration(seconds: 3));
    try {
      final jsonData = await _localInfoDataSource.fetchInfoFile();
      return Info.fromJson(jsonData);
    } catch (e) {
      return null;
    }
  }
}
