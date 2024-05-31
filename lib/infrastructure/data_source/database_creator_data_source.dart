import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseCreatorDataSource {
  DatabaseCreatorDataSource._();

  factory DatabaseCreatorDataSource() => _instance;

  static final _instance = DatabaseCreatorDataSource._();

  int get databaseVersion => 1;
  String get databaseName => "info";

  // DB のインスタンス
  Database? _database;

  // DB が初期化済みかつオープンされている場合のみ訪寺しているインスタンスを返却する
  // それ以外の場合は DB のインスタンスを初期化し、そのインスタンスを返却する
  Future<Database> get database async =>
      _database != null && _database!.isOpen ? _database! : await createDB();

  // DB を open する
  Future<Database> createDB() async {
    final dbPath = join(await getDatabasePath(), databaseName);
    log('create DB, path = $dbPath');

    return _database = await openDatabase(
      dbPath,
      onCreate: createDatabase,
      version: databaseVersion,
    );
  }

  Future<void> createDatabase(Database database, int version) async {
    final localInfoFromJson = await fetchLocalInfoJsonFile();
    // create card table
    database.execute('''
    CREATE TABLE card (
    card_name TEXT,
    issuing_company TEXT,
    brand INTEGER,
    classification INTEGER,
    number TEXT,
    effective_date TEXT,
    card_holder TEXT,
    passcode TEXT,
    card_verification_value TEXT,
    available_shopping_limit INTEGER,
    available_cash_advance_limit INTEGER,
    annual_fee INTEGER,
    repayment_account TEXT,
    note TEXT,
    managed_sites TEXT,
    account TEXT,
    password TEXT,
    PRIMARY KEY(number)
    )
    ''');

    // add card item
    if (localInfoFromJson != null) {
      await insertAll(
        database: database,
        tableName: 'card',
        valueList: localInfoFromJson['card'],
      );
    }
  }

  Future<String> getDatabasePath() async {
    if (Platform.isIOS) {
      final Directory dbDirectory = await getLibraryDirectory();
      return '${dbDirectory.path}/databases';
    } else {
      return await getDatabasesPath();
    }
  }

  Future<Map<String, dynamic>?> fetchLocalInfoJsonFile() async {
    // TODO test code
    await Future.delayed(const Duration(seconds: 1));
    try {
      const String flavor = String.fromEnvironment('FLAVOR');
      const String filePath = 'json/$flavor/info.json';
      final String textData = await rootBundle.loadString(filePath);

      return jsonDecode(textData);
    } catch (error) {
      log(error.toString());
      return null;
    }
  }

  Future<void> insertAll({
    required Database database,
    required String tableName,
    required List valueList,
  }) async {
    try {
      final batch = database.batch();

      for (var value in valueList) {
        batch.insert(
          tableName,
          value,
        );
      }

      await batch.commit();
    } catch (error) {
      log(error.toString());
    }
  }
}
