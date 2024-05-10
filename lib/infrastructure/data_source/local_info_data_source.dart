import 'dart:convert';

import 'package:flutter/services.dart';

/// ローカルの設定ファイルを取得する
class LocalInfoDataSource {
  /// infoファイルの取得
  Future<Map<String, dynamic>> fetchInfoFile() async {
    const String filePath = 'json/info.json';
    final String textData = await rootBundle.loadString(filePath);
    return jsonDecode(textData);
  }
}