import 'package:drift/drift.dart';
import 'package:yma_app/database/app_database.dart';

//singleton class
class DbHelper {
  static final DbHelper _instance = DbHelper._internal();

  factory DbHelper() {
    return _instance;
  }
  DbHelper._internal();

  late AppDatabase _db;

  void init() {
    _db = AppDatabase();
  }

  Future<List<MemberInfoData>> getMemberList({
    int page = 1,
    int itemsPerPage = 10,
  }) async {
    int offset = 0;

    if (page > 1) {
      offset = itemsPerPage * (page - 1);
    }

    final results = await _db.managers.memberInfo.get(
      offset: offset,
      limit: itemsPerPage,
    );
    return results;
  }

  Future<int> addMember({
    required String hming,
    required String currentAddress,
    required String gender,
    required String maritalStatus,
    required String addressStatus,
    String? paHming,
    String? nuHming,
    String? previousAddress,
  }) async {
    //asynchronous vs synchonous
    return await _db.managers.memberInfo.create(
      (data) => data(
        addressStatus: addressStatus,
        createdAt: DateTime.now(),
        currentAddress: currentAddress,
        gender: gender,
        hming: hming,
        lastUpdatedAt: DateTime.now(),
        maritalStatus: maritalStatus,
        previousAddress: Value.absentIfNull(previousAddress),
      ),
    );
  }

  Future<int> updateMember({
    required int memberId,
    String? hming,
    String? currentAddress,
    String? addressStatus,
    String? gender,
    String? maritalStatus,
    String? paHming,
    String? nuHming,
    String? previousAddress,
  }) async {
    //asynchronous vs synchonous
    return await _db.managers.memberInfo
        .filter((f) => f.id.equals(memberId))
        .update(
          (data) => data(
            addressStatus: Value.absentIfNull(addressStatus),
            createdAt: Value(DateTime.now()),
            currentAddress: Value.absentIfNull(currentAddress),
            gender: Value.absentIfNull(gender),
            hming: Value.absentIfNull(hming),
            lastUpdatedAt: Value(DateTime.now()),
            maritalStatus: Value.absentIfNull(maritalStatus),
            previousAddress: Value.absentIfNull(previousAddress),
            paHming: Value.absentIfNull(paHming),
            nuHming: Value.absentIfNull(nuHming),
          ),
        );
  }

  Future<int> deleteMember({required int memberId}) async {
    return await _db.managers.memberInfo
        .filter((f) => f.id.equals(memberId))
        .delete();
  }
}
