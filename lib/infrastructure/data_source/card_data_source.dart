import 'dart:developer';

import 'package:my_app/infrastructure/data_source/base_table_data_source.dart';
import 'package:my_app/infrastructure/model/card_item.dart';

class CardDataSource extends BaseTableDataSource<CardItem> {
  /// テーブル名
  @override
  String get tableName => 'card';

  /// [value]をテーブルに追加
  @override
  Future<int> insert(CardItem value) async {
    final databaseInstance = await database;
    try {
      return await databaseInstance.insert(
        tableName,
        value.toJson(),
      );
    } catch (error) {
      log(error.toString());
      return 0;
    }
  }

  /// [valueList]をテーブルに追加
  Future<List<Object?>> insertAll(List<CardItem> valueList) async {
    final databaseInstance = await database;
    try {
      final batch = databaseInstance.batch();

      for (var value in valueList) {
        batch.insert(
          tableName,
          value.toJson(),
        );
      }

      return await batch.commit();
    } catch (error) {
      log(error.toString());
      return List.empty();
    }
  }

  /// [where]に一致するレコードを delete する
  @override
  Future<int> delete({
    required String where,
    List<Object?>? whereArgs,
  }) async {
    final databaseInstance = await database;
    try {
      return await databaseInstance.delete(
        tableName,
        where: where,
        whereArgs: whereArgs,
      );
    } catch (error) {
      log(error.toString());
      return 0;
    }
  }

  /// [where]に一致するレコードを[value]で update する
  @override
  Future<int> update(
    CardItem value, {
    required String where,
    List<Object?>? whereArgs,
  }) async {
    final databaseInstance = await database;
    try {
      return await databaseInstance.update(
        tableName,
        value.toJson(),
        where: where,
        whereArgs: whereArgs,
      );
    } catch (error) {
      log(error.toString());
      return 0;
    }
  }

  /// [where]に一致するものを取得
  @override
  Future<List<CardItem>> select({
    String where = '',
    List<Object?>? whereArgs,
  }) async {
    final databaseInstance = await database;
    try {
      final selectResult = await databaseInstance.query(
        tableName,
        where: where,
        whereArgs: whereArgs,
      );
      if (selectResult.isEmpty) {
        return List.empty();
      }
      return selectResult
          .map(
            (e) => CardItem.fromJson(e),
          )
          .toList();
    } catch (error) {
      log(error.toString());
      return List.empty();
    }
  }
}
