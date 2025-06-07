// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MemberInfoTable extends MemberInfo
    with TableInfo<$MemberInfoTable, MemberInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MemberInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _hmingMeta = const VerificationMeta('hming');
  @override
  late final GeneratedColumn<String> hming = GeneratedColumn<String>(
    'hming',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paHmingMeta = const VerificationMeta(
    'paHming',
  );
  @override
  late final GeneratedColumn<String> paHming = GeneratedColumn<String>(
    'pa_hming',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nuHmingMeta = const VerificationMeta(
    'nuHming',
  );
  @override
  late final GeneratedColumn<String> nuHming = GeneratedColumn<String>(
    'nu_hming',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _currentAddressMeta = const VerificationMeta(
    'currentAddress',
  );
  @override
  late final GeneratedColumn<String> currentAddress = GeneratedColumn<String>(
    'current_address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _previousAddressMeta = const VerificationMeta(
    'previousAddress',
  );
  @override
  late final GeneratedColumn<String> previousAddress = GeneratedColumn<String>(
    'previous_address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressStatusMeta = const VerificationMeta(
    'addressStatus',
  );
  @override
  late final GeneratedColumn<String> addressStatus = GeneratedColumn<String>(
    'address_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maritalStatusMeta = const VerificationMeta(
    'maritalStatus',
  );
  @override
  late final GeneratedColumn<String> maritalStatus = GeneratedColumn<String>(
    'marital_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastUpdatedAtMeta = const VerificationMeta(
    'lastUpdatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastUpdatedAt =
      GeneratedColumn<DateTime>(
        'last_updated_at',
        aliasedName,
        false,
        type: DriftSqlType.dateTime,
        requiredDuringInsert: true,
      );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    hming,
    paHming,
    nuHming,
    currentAddress,
    previousAddress,
    addressStatus,
    gender,
    maritalStatus,
    createdAt,
    lastUpdatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'member_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<MemberInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('hming')) {
      context.handle(
        _hmingMeta,
        hming.isAcceptableOrUnknown(data['hming']!, _hmingMeta),
      );
    } else if (isInserting) {
      context.missing(_hmingMeta);
    }
    if (data.containsKey('pa_hming')) {
      context.handle(
        _paHmingMeta,
        paHming.isAcceptableOrUnknown(data['pa_hming']!, _paHmingMeta),
      );
    }
    if (data.containsKey('nu_hming')) {
      context.handle(
        _nuHmingMeta,
        nuHming.isAcceptableOrUnknown(data['nu_hming']!, _nuHmingMeta),
      );
    }
    if (data.containsKey('current_address')) {
      context.handle(
        _currentAddressMeta,
        currentAddress.isAcceptableOrUnknown(
          data['current_address']!,
          _currentAddressMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_currentAddressMeta);
    }
    if (data.containsKey('previous_address')) {
      context.handle(
        _previousAddressMeta,
        previousAddress.isAcceptableOrUnknown(
          data['previous_address']!,
          _previousAddressMeta,
        ),
      );
    }
    if (data.containsKey('address_status')) {
      context.handle(
        _addressStatusMeta,
        addressStatus.isAcceptableOrUnknown(
          data['address_status']!,
          _addressStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_addressStatusMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('marital_status')) {
      context.handle(
        _maritalStatusMeta,
        maritalStatus.isAcceptableOrUnknown(
          data['marital_status']!,
          _maritalStatusMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maritalStatusMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('last_updated_at')) {
      context.handle(
        _lastUpdatedAtMeta,
        lastUpdatedAt.isAcceptableOrUnknown(
          data['last_updated_at']!,
          _lastUpdatedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastUpdatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MemberInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MemberInfoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      hming: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}hming'],
      )!,
      paHming: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}pa_hming'],
      ),
      nuHming: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nu_hming'],
      ),
      currentAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}current_address'],
      )!,
      previousAddress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}previous_address'],
      ),
      addressStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address_status'],
      )!,
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      maritalStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}marital_status'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      lastUpdatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_updated_at'],
      )!,
    );
  }

  @override
  $MemberInfoTable createAlias(String alias) {
    return $MemberInfoTable(attachedDatabase, alias);
  }
}

class MemberInfoData extends DataClass implements Insertable<MemberInfoData> {
  final int id;
  final String hming;
  final String? paHming;
  final String? nuHming;
  final String currentAddress;
  final String? previousAddress;
  final String addressStatus;
  final String gender;
  final String maritalStatus;
  final DateTime createdAt;
  final DateTime lastUpdatedAt;
  const MemberInfoData({
    required this.id,
    required this.hming,
    this.paHming,
    this.nuHming,
    required this.currentAddress,
    this.previousAddress,
    required this.addressStatus,
    required this.gender,
    required this.maritalStatus,
    required this.createdAt,
    required this.lastUpdatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['hming'] = Variable<String>(hming);
    if (!nullToAbsent || paHming != null) {
      map['pa_hming'] = Variable<String>(paHming);
    }
    if (!nullToAbsent || nuHming != null) {
      map['nu_hming'] = Variable<String>(nuHming);
    }
    map['current_address'] = Variable<String>(currentAddress);
    if (!nullToAbsent || previousAddress != null) {
      map['previous_address'] = Variable<String>(previousAddress);
    }
    map['address_status'] = Variable<String>(addressStatus);
    map['gender'] = Variable<String>(gender);
    map['marital_status'] = Variable<String>(maritalStatus);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt);
    return map;
  }

  MemberInfoCompanion toCompanion(bool nullToAbsent) {
    return MemberInfoCompanion(
      id: Value(id),
      hming: Value(hming),
      paHming: paHming == null && nullToAbsent
          ? const Value.absent()
          : Value(paHming),
      nuHming: nuHming == null && nullToAbsent
          ? const Value.absent()
          : Value(nuHming),
      currentAddress: Value(currentAddress),
      previousAddress: previousAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(previousAddress),
      addressStatus: Value(addressStatus),
      gender: Value(gender),
      maritalStatus: Value(maritalStatus),
      createdAt: Value(createdAt),
      lastUpdatedAt: Value(lastUpdatedAt),
    );
  }

  factory MemberInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MemberInfoData(
      id: serializer.fromJson<int>(json['id']),
      hming: serializer.fromJson<String>(json['hming']),
      paHming: serializer.fromJson<String?>(json['paHming']),
      nuHming: serializer.fromJson<String?>(json['nuHming']),
      currentAddress: serializer.fromJson<String>(json['currentAddress']),
      previousAddress: serializer.fromJson<String?>(json['previousAddress']),
      addressStatus: serializer.fromJson<String>(json['addressStatus']),
      gender: serializer.fromJson<String>(json['gender']),
      maritalStatus: serializer.fromJson<String>(json['maritalStatus']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      lastUpdatedAt: serializer.fromJson<DateTime>(json['lastUpdatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'hming': serializer.toJson<String>(hming),
      'paHming': serializer.toJson<String?>(paHming),
      'nuHming': serializer.toJson<String?>(nuHming),
      'currentAddress': serializer.toJson<String>(currentAddress),
      'previousAddress': serializer.toJson<String?>(previousAddress),
      'addressStatus': serializer.toJson<String>(addressStatus),
      'gender': serializer.toJson<String>(gender),
      'maritalStatus': serializer.toJson<String>(maritalStatus),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'lastUpdatedAt': serializer.toJson<DateTime>(lastUpdatedAt),
    };
  }

  MemberInfoData copyWith({
    int? id,
    String? hming,
    Value<String?> paHming = const Value.absent(),
    Value<String?> nuHming = const Value.absent(),
    String? currentAddress,
    Value<String?> previousAddress = const Value.absent(),
    String? addressStatus,
    String? gender,
    String? maritalStatus,
    DateTime? createdAt,
    DateTime? lastUpdatedAt,
  }) => MemberInfoData(
    id: id ?? this.id,
    hming: hming ?? this.hming,
    paHming: paHming.present ? paHming.value : this.paHming,
    nuHming: nuHming.present ? nuHming.value : this.nuHming,
    currentAddress: currentAddress ?? this.currentAddress,
    previousAddress: previousAddress.present
        ? previousAddress.value
        : this.previousAddress,
    addressStatus: addressStatus ?? this.addressStatus,
    gender: gender ?? this.gender,
    maritalStatus: maritalStatus ?? this.maritalStatus,
    createdAt: createdAt ?? this.createdAt,
    lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
  );
  MemberInfoData copyWithCompanion(MemberInfoCompanion data) {
    return MemberInfoData(
      id: data.id.present ? data.id.value : this.id,
      hming: data.hming.present ? data.hming.value : this.hming,
      paHming: data.paHming.present ? data.paHming.value : this.paHming,
      nuHming: data.nuHming.present ? data.nuHming.value : this.nuHming,
      currentAddress: data.currentAddress.present
          ? data.currentAddress.value
          : this.currentAddress,
      previousAddress: data.previousAddress.present
          ? data.previousAddress.value
          : this.previousAddress,
      addressStatus: data.addressStatus.present
          ? data.addressStatus.value
          : this.addressStatus,
      gender: data.gender.present ? data.gender.value : this.gender,
      maritalStatus: data.maritalStatus.present
          ? data.maritalStatus.value
          : this.maritalStatus,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      lastUpdatedAt: data.lastUpdatedAt.present
          ? data.lastUpdatedAt.value
          : this.lastUpdatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MemberInfoData(')
          ..write('id: $id, ')
          ..write('hming: $hming, ')
          ..write('paHming: $paHming, ')
          ..write('nuHming: $nuHming, ')
          ..write('currentAddress: $currentAddress, ')
          ..write('previousAddress: $previousAddress, ')
          ..write('addressStatus: $addressStatus, ')
          ..write('gender: $gender, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    hming,
    paHming,
    nuHming,
    currentAddress,
    previousAddress,
    addressStatus,
    gender,
    maritalStatus,
    createdAt,
    lastUpdatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MemberInfoData &&
          other.id == this.id &&
          other.hming == this.hming &&
          other.paHming == this.paHming &&
          other.nuHming == this.nuHming &&
          other.currentAddress == this.currentAddress &&
          other.previousAddress == this.previousAddress &&
          other.addressStatus == this.addressStatus &&
          other.gender == this.gender &&
          other.maritalStatus == this.maritalStatus &&
          other.createdAt == this.createdAt &&
          other.lastUpdatedAt == this.lastUpdatedAt);
}

class MemberInfoCompanion extends UpdateCompanion<MemberInfoData> {
  final Value<int> id;
  final Value<String> hming;
  final Value<String?> paHming;
  final Value<String?> nuHming;
  final Value<String> currentAddress;
  final Value<String?> previousAddress;
  final Value<String> addressStatus;
  final Value<String> gender;
  final Value<String> maritalStatus;
  final Value<DateTime> createdAt;
  final Value<DateTime> lastUpdatedAt;
  const MemberInfoCompanion({
    this.id = const Value.absent(),
    this.hming = const Value.absent(),
    this.paHming = const Value.absent(),
    this.nuHming = const Value.absent(),
    this.currentAddress = const Value.absent(),
    this.previousAddress = const Value.absent(),
    this.addressStatus = const Value.absent(),
    this.gender = const Value.absent(),
    this.maritalStatus = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.lastUpdatedAt = const Value.absent(),
  });
  MemberInfoCompanion.insert({
    this.id = const Value.absent(),
    required String hming,
    this.paHming = const Value.absent(),
    this.nuHming = const Value.absent(),
    required String currentAddress,
    this.previousAddress = const Value.absent(),
    required String addressStatus,
    required String gender,
    required String maritalStatus,
    required DateTime createdAt,
    required DateTime lastUpdatedAt,
  }) : hming = Value(hming),
       currentAddress = Value(currentAddress),
       addressStatus = Value(addressStatus),
       gender = Value(gender),
       maritalStatus = Value(maritalStatus),
       createdAt = Value(createdAt),
       lastUpdatedAt = Value(lastUpdatedAt);
  static Insertable<MemberInfoData> custom({
    Expression<int>? id,
    Expression<String>? hming,
    Expression<String>? paHming,
    Expression<String>? nuHming,
    Expression<String>? currentAddress,
    Expression<String>? previousAddress,
    Expression<String>? addressStatus,
    Expression<String>? gender,
    Expression<String>? maritalStatus,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? lastUpdatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (hming != null) 'hming': hming,
      if (paHming != null) 'pa_hming': paHming,
      if (nuHming != null) 'nu_hming': nuHming,
      if (currentAddress != null) 'current_address': currentAddress,
      if (previousAddress != null) 'previous_address': previousAddress,
      if (addressStatus != null) 'address_status': addressStatus,
      if (gender != null) 'gender': gender,
      if (maritalStatus != null) 'marital_status': maritalStatus,
      if (createdAt != null) 'created_at': createdAt,
      if (lastUpdatedAt != null) 'last_updated_at': lastUpdatedAt,
    });
  }

  MemberInfoCompanion copyWith({
    Value<int>? id,
    Value<String>? hming,
    Value<String?>? paHming,
    Value<String?>? nuHming,
    Value<String>? currentAddress,
    Value<String?>? previousAddress,
    Value<String>? addressStatus,
    Value<String>? gender,
    Value<String>? maritalStatus,
    Value<DateTime>? createdAt,
    Value<DateTime>? lastUpdatedAt,
  }) {
    return MemberInfoCompanion(
      id: id ?? this.id,
      hming: hming ?? this.hming,
      paHming: paHming ?? this.paHming,
      nuHming: nuHming ?? this.nuHming,
      currentAddress: currentAddress ?? this.currentAddress,
      previousAddress: previousAddress ?? this.previousAddress,
      addressStatus: addressStatus ?? this.addressStatus,
      gender: gender ?? this.gender,
      maritalStatus: maritalStatus ?? this.maritalStatus,
      createdAt: createdAt ?? this.createdAt,
      lastUpdatedAt: lastUpdatedAt ?? this.lastUpdatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (hming.present) {
      map['hming'] = Variable<String>(hming.value);
    }
    if (paHming.present) {
      map['pa_hming'] = Variable<String>(paHming.value);
    }
    if (nuHming.present) {
      map['nu_hming'] = Variable<String>(nuHming.value);
    }
    if (currentAddress.present) {
      map['current_address'] = Variable<String>(currentAddress.value);
    }
    if (previousAddress.present) {
      map['previous_address'] = Variable<String>(previousAddress.value);
    }
    if (addressStatus.present) {
      map['address_status'] = Variable<String>(addressStatus.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (maritalStatus.present) {
      map['marital_status'] = Variable<String>(maritalStatus.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (lastUpdatedAt.present) {
      map['last_updated_at'] = Variable<DateTime>(lastUpdatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MemberInfoCompanion(')
          ..write('id: $id, ')
          ..write('hming: $hming, ')
          ..write('paHming: $paHming, ')
          ..write('nuHming: $nuHming, ')
          ..write('currentAddress: $currentAddress, ')
          ..write('previousAddress: $previousAddress, ')
          ..write('addressStatus: $addressStatus, ')
          ..write('gender: $gender, ')
          ..write('maritalStatus: $maritalStatus, ')
          ..write('createdAt: $createdAt, ')
          ..write('lastUpdatedAt: $lastUpdatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MemberInfoTable memberInfo = $MemberInfoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [memberInfo];
}

typedef $$MemberInfoTableCreateCompanionBuilder =
    MemberInfoCompanion Function({
      Value<int> id,
      required String hming,
      Value<String?> paHming,
      Value<String?> nuHming,
      required String currentAddress,
      Value<String?> previousAddress,
      required String addressStatus,
      required String gender,
      required String maritalStatus,
      required DateTime createdAt,
      required DateTime lastUpdatedAt,
    });
typedef $$MemberInfoTableUpdateCompanionBuilder =
    MemberInfoCompanion Function({
      Value<int> id,
      Value<String> hming,
      Value<String?> paHming,
      Value<String?> nuHming,
      Value<String> currentAddress,
      Value<String?> previousAddress,
      Value<String> addressStatus,
      Value<String> gender,
      Value<String> maritalStatus,
      Value<DateTime> createdAt,
      Value<DateTime> lastUpdatedAt,
    });

class $$MemberInfoTableFilterComposer
    extends Composer<_$AppDatabase, $MemberInfoTable> {
  $$MemberInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get hming => $composableBuilder(
    column: $table.hming,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paHming => $composableBuilder(
    column: $table.paHming,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nuHming => $composableBuilder(
    column: $table.nuHming,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get currentAddress => $composableBuilder(
    column: $table.currentAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get previousAddress => $composableBuilder(
    column: $table.previousAddress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get addressStatus => $composableBuilder(
    column: $table.addressStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get maritalStatus => $composableBuilder(
    column: $table.maritalStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$MemberInfoTableOrderingComposer
    extends Composer<_$AppDatabase, $MemberInfoTable> {
  $$MemberInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get hming => $composableBuilder(
    column: $table.hming,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paHming => $composableBuilder(
    column: $table.paHming,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nuHming => $composableBuilder(
    column: $table.nuHming,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get currentAddress => $composableBuilder(
    column: $table.currentAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get previousAddress => $composableBuilder(
    column: $table.previousAddress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get addressStatus => $composableBuilder(
    column: $table.addressStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get maritalStatus => $composableBuilder(
    column: $table.maritalStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$MemberInfoTableAnnotationComposer
    extends Composer<_$AppDatabase, $MemberInfoTable> {
  $$MemberInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get hming =>
      $composableBuilder(column: $table.hming, builder: (column) => column);

  GeneratedColumn<String> get paHming =>
      $composableBuilder(column: $table.paHming, builder: (column) => column);

  GeneratedColumn<String> get nuHming =>
      $composableBuilder(column: $table.nuHming, builder: (column) => column);

  GeneratedColumn<String> get currentAddress => $composableBuilder(
    column: $table.currentAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get previousAddress => $composableBuilder(
    column: $table.previousAddress,
    builder: (column) => column,
  );

  GeneratedColumn<String> get addressStatus => $composableBuilder(
    column: $table.addressStatus,
    builder: (column) => column,
  );

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<String> get maritalStatus => $composableBuilder(
    column: $table.maritalStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get lastUpdatedAt => $composableBuilder(
    column: $table.lastUpdatedAt,
    builder: (column) => column,
  );
}

class $$MemberInfoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MemberInfoTable,
          MemberInfoData,
          $$MemberInfoTableFilterComposer,
          $$MemberInfoTableOrderingComposer,
          $$MemberInfoTableAnnotationComposer,
          $$MemberInfoTableCreateCompanionBuilder,
          $$MemberInfoTableUpdateCompanionBuilder,
          (
            MemberInfoData,
            BaseReferences<_$AppDatabase, $MemberInfoTable, MemberInfoData>,
          ),
          MemberInfoData,
          PrefetchHooks Function()
        > {
  $$MemberInfoTableTableManager(_$AppDatabase db, $MemberInfoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MemberInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MemberInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MemberInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> hming = const Value.absent(),
                Value<String?> paHming = const Value.absent(),
                Value<String?> nuHming = const Value.absent(),
                Value<String> currentAddress = const Value.absent(),
                Value<String?> previousAddress = const Value.absent(),
                Value<String> addressStatus = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<String> maritalStatus = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> lastUpdatedAt = const Value.absent(),
              }) => MemberInfoCompanion(
                id: id,
                hming: hming,
                paHming: paHming,
                nuHming: nuHming,
                currentAddress: currentAddress,
                previousAddress: previousAddress,
                addressStatus: addressStatus,
                gender: gender,
                maritalStatus: maritalStatus,
                createdAt: createdAt,
                lastUpdatedAt: lastUpdatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String hming,
                Value<String?> paHming = const Value.absent(),
                Value<String?> nuHming = const Value.absent(),
                required String currentAddress,
                Value<String?> previousAddress = const Value.absent(),
                required String addressStatus,
                required String gender,
                required String maritalStatus,
                required DateTime createdAt,
                required DateTime lastUpdatedAt,
              }) => MemberInfoCompanion.insert(
                id: id,
                hming: hming,
                paHming: paHming,
                nuHming: nuHming,
                currentAddress: currentAddress,
                previousAddress: previousAddress,
                addressStatus: addressStatus,
                gender: gender,
                maritalStatus: maritalStatus,
                createdAt: createdAt,
                lastUpdatedAt: lastUpdatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$MemberInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MemberInfoTable,
      MemberInfoData,
      $$MemberInfoTableFilterComposer,
      $$MemberInfoTableOrderingComposer,
      $$MemberInfoTableAnnotationComposer,
      $$MemberInfoTableCreateCompanionBuilder,
      $$MemberInfoTableUpdateCompanionBuilder,
      (
        MemberInfoData,
        BaseReferences<_$AppDatabase, $MemberInfoTable, MemberInfoData>,
      ),
      MemberInfoData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MemberInfoTableTableManager get memberInfo =>
      $$MemberInfoTableTableManager(_db, _db.memberInfo);
}
