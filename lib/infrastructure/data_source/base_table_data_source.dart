import 'package:my_app/infrastructure/data_source/database_creator_data_source.dart';
import 'package:sqflite/sqflite.dart';

/// テーブルの BaseDao
abstract class BaseTableDataSource<T> {
  final databaseCreatorDataSource = DatabaseCreatorDataSource();

  /// テーブル名
  String get tableName;

  /// DB のインスタンスを取得
  Future<Database> get database async => databaseCreatorDataSource.database;

  /// [value]をテーブルに追加
  Future<int> insert(T value);

  /// [where]に一致するレコードを delete する
  Future<int> delete({
    required String where,
    List<Object?>? whereArgs,
  });

  /// [where]に一致するレコードを[value]で update する
  Future<int> update(
    T value, {
    required String where,
    List<Object?>? whereArgs,
  });

  /// [where]に一致するものを取得
  Future<List<T>> select({
    String where,
    List<Object?>? whereArgs,
  });
}
