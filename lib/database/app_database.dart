import 'dart:developer';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class MemberInfo extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get hming => text()();
  TextColumn get paHming => text().nullable()();
  TextColumn get nuHming => text().nullable()();
  TextColumn get currentAddress => text()();
  TextColumn get previousAddress => text().nullable()();
  // awm_nghet or pem
  TextColumn get addressStatus => text()();
  TextColumn get gender => text()();
  TextColumn get maritalStatus => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get lastUpdatedAt => dateTime()();
}

class MemberFee extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get memberInfoId => integer().references(MemberInfo, #id)();
  RealColumn get amountPaid => real()();
  DateTimeColumn get paidOn => dateTime()();
  IntColumn get year => integer()();
}

@DriftDatabase(
  tables: [MemberInfo, MemberFee],
  queries: {'getTotalMember': "SELECT COUNT(DISTINCT id) from member_info"},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: (m, from, to) async {
        log("onUpgrade from : $from , to: $to", name: 'app_database');
        if (from <= 1) {
          await m.createTable(memberFee);
        }
      },
    );
  }

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'ymadb',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
