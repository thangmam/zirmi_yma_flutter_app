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

class $MemberFeeTable extends MemberFee
    with TableInfo<$MemberFeeTable, MemberFeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MemberFeeTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _memberInfoIdMeta = const VerificationMeta(
    'memberInfoId',
  );
  @override
  late final GeneratedColumn<int> memberInfoId = GeneratedColumn<int>(
    'member_info_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES member_info (id)',
    ),
  );
  static const VerificationMeta _amountPaidMeta = const VerificationMeta(
    'amountPaid',
  );
  @override
  late final GeneratedColumn<double> amountPaid = GeneratedColumn<double>(
    'amount_paid',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidOnMeta = const VerificationMeta('paidOn');
  @override
  late final GeneratedColumn<DateTime> paidOn = GeneratedColumn<DateTime>(
    'paid_on',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<int> year = GeneratedColumn<int>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    memberInfoId,
    amountPaid,
    paidOn,
    year,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'member_fee';
  @override
  VerificationContext validateIntegrity(
    Insertable<MemberFeeData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('member_info_id')) {
      context.handle(
        _memberInfoIdMeta,
        memberInfoId.isAcceptableOrUnknown(
          data['member_info_id']!,
          _memberInfoIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_memberInfoIdMeta);
    }
    if (data.containsKey('amount_paid')) {
      context.handle(
        _amountPaidMeta,
        amountPaid.isAcceptableOrUnknown(data['amount_paid']!, _amountPaidMeta),
      );
    } else if (isInserting) {
      context.missing(_amountPaidMeta);
    }
    if (data.containsKey('paid_on')) {
      context.handle(
        _paidOnMeta,
        paidOn.isAcceptableOrUnknown(data['paid_on']!, _paidOnMeta),
      );
    } else if (isInserting) {
      context.missing(_paidOnMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MemberFeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MemberFeeData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      memberInfoId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}member_info_id'],
      )!,
      amountPaid: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}amount_paid'],
      )!,
      paidOn: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}paid_on'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}year'],
      )!,
    );
  }

  @override
  $MemberFeeTable createAlias(String alias) {
    return $MemberFeeTable(attachedDatabase, alias);
  }
}

class MemberFeeData extends DataClass implements Insertable<MemberFeeData> {
  final int id;
  final int memberInfoId;
  final double amountPaid;
  final DateTime paidOn;
  final int year;
  const MemberFeeData({
    required this.id,
    required this.memberInfoId,
    required this.amountPaid,
    required this.paidOn,
    required this.year,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['member_info_id'] = Variable<int>(memberInfoId);
    map['amount_paid'] = Variable<double>(amountPaid);
    map['paid_on'] = Variable<DateTime>(paidOn);
    map['year'] = Variable<int>(year);
    return map;
  }

  MemberFeeCompanion toCompanion(bool nullToAbsent) {
    return MemberFeeCompanion(
      id: Value(id),
      memberInfoId: Value(memberInfoId),
      amountPaid: Value(amountPaid),
      paidOn: Value(paidOn),
      year: Value(year),
    );
  }

  factory MemberFeeData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MemberFeeData(
      id: serializer.fromJson<int>(json['id']),
      memberInfoId: serializer.fromJson<int>(json['memberInfoId']),
      amountPaid: serializer.fromJson<double>(json['amountPaid']),
      paidOn: serializer.fromJson<DateTime>(json['paidOn']),
      year: serializer.fromJson<int>(json['year']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'memberInfoId': serializer.toJson<int>(memberInfoId),
      'amountPaid': serializer.toJson<double>(amountPaid),
      'paidOn': serializer.toJson<DateTime>(paidOn),
      'year': serializer.toJson<int>(year),
    };
  }

  MemberFeeData copyWith({
    int? id,
    int? memberInfoId,
    double? amountPaid,
    DateTime? paidOn,
    int? year,
  }) => MemberFeeData(
    id: id ?? this.id,
    memberInfoId: memberInfoId ?? this.memberInfoId,
    amountPaid: amountPaid ?? this.amountPaid,
    paidOn: paidOn ?? this.paidOn,
    year: year ?? this.year,
  );
  MemberFeeData copyWithCompanion(MemberFeeCompanion data) {
    return MemberFeeData(
      id: data.id.present ? data.id.value : this.id,
      memberInfoId: data.memberInfoId.present
          ? data.memberInfoId.value
          : this.memberInfoId,
      amountPaid: data.amountPaid.present
          ? data.amountPaid.value
          : this.amountPaid,
      paidOn: data.paidOn.present ? data.paidOn.value : this.paidOn,
      year: data.year.present ? data.year.value : this.year,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MemberFeeData(')
          ..write('id: $id, ')
          ..write('memberInfoId: $memberInfoId, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('paidOn: $paidOn, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, memberInfoId, amountPaid, paidOn, year);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MemberFeeData &&
          other.id == this.id &&
          other.memberInfoId == this.memberInfoId &&
          other.amountPaid == this.amountPaid &&
          other.paidOn == this.paidOn &&
          other.year == this.year);
}

class MemberFeeCompanion extends UpdateCompanion<MemberFeeData> {
  final Value<int> id;
  final Value<int> memberInfoId;
  final Value<double> amountPaid;
  final Value<DateTime> paidOn;
  final Value<int> year;
  const MemberFeeCompanion({
    this.id = const Value.absent(),
    this.memberInfoId = const Value.absent(),
    this.amountPaid = const Value.absent(),
    this.paidOn = const Value.absent(),
    this.year = const Value.absent(),
  });
  MemberFeeCompanion.insert({
    this.id = const Value.absent(),
    required int memberInfoId,
    required double amountPaid,
    required DateTime paidOn,
    required int year,
  }) : memberInfoId = Value(memberInfoId),
       amountPaid = Value(amountPaid),
       paidOn = Value(paidOn),
       year = Value(year);
  static Insertable<MemberFeeData> custom({
    Expression<int>? id,
    Expression<int>? memberInfoId,
    Expression<double>? amountPaid,
    Expression<DateTime>? paidOn,
    Expression<int>? year,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (memberInfoId != null) 'member_info_id': memberInfoId,
      if (amountPaid != null) 'amount_paid': amountPaid,
      if (paidOn != null) 'paid_on': paidOn,
      if (year != null) 'year': year,
    });
  }

  MemberFeeCompanion copyWith({
    Value<int>? id,
    Value<int>? memberInfoId,
    Value<double>? amountPaid,
    Value<DateTime>? paidOn,
    Value<int>? year,
  }) {
    return MemberFeeCompanion(
      id: id ?? this.id,
      memberInfoId: memberInfoId ?? this.memberInfoId,
      amountPaid: amountPaid ?? this.amountPaid,
      paidOn: paidOn ?? this.paidOn,
      year: year ?? this.year,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (memberInfoId.present) {
      map['member_info_id'] = Variable<int>(memberInfoId.value);
    }
    if (amountPaid.present) {
      map['amount_paid'] = Variable<double>(amountPaid.value);
    }
    if (paidOn.present) {
      map['paid_on'] = Variable<DateTime>(paidOn.value);
    }
    if (year.present) {
      map['year'] = Variable<int>(year.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MemberFeeCompanion(')
          ..write('id: $id, ')
          ..write('memberInfoId: $memberInfoId, ')
          ..write('amountPaid: $amountPaid, ')
          ..write('paidOn: $paidOn, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MemberInfoTable memberInfo = $MemberInfoTable(this);
  late final $MemberFeeTable memberFee = $MemberFeeTable(this);
  Selectable<int> getTotalMember() {
    return customSelect(
      'SELECT COUNT(DISTINCT id) AS _c0 FROM member_info',
      variables: [],
      readsFrom: {memberInfo},
    ).map((QueryRow row) => row.read<int>('_c0'));
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [memberInfo, memberFee];
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

final class $$MemberInfoTableReferences
    extends BaseReferences<_$AppDatabase, $MemberInfoTable, MemberInfoData> {
  $$MemberInfoTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$MemberFeeTable, List<MemberFeeData>>
  _memberFeeRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.memberFee,
    aliasName: $_aliasNameGenerator(
      db.memberInfo.id,
      db.memberFee.memberInfoId,
    ),
  );

  $$MemberFeeTableProcessedTableManager get memberFeeRefs {
    final manager = $$MemberFeeTableTableManager(
      $_db,
      $_db.memberFee,
    ).filter((f) => f.memberInfoId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_memberFeeRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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

  Expression<bool> memberFeeRefs(
    Expression<bool> Function($$MemberFeeTableFilterComposer f) f,
  ) {
    final $$MemberFeeTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.memberFee,
      getReferencedColumn: (t) => t.memberInfoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MemberFeeTableFilterComposer(
            $db: $db,
            $table: $db.memberFee,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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

  Expression<T> memberFeeRefs<T extends Object>(
    Expression<T> Function($$MemberFeeTableAnnotationComposer a) f,
  ) {
    final $$MemberFeeTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.memberFee,
      getReferencedColumn: (t) => t.memberInfoId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MemberFeeTableAnnotationComposer(
            $db: $db,
            $table: $db.memberFee,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
          (MemberInfoData, $$MemberInfoTableReferences),
          MemberInfoData,
          PrefetchHooks Function({bool memberFeeRefs})
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
              .map(
                (e) => (
                  e.readTable(table),
                  $$MemberInfoTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({memberFeeRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (memberFeeRefs) db.memberFee],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (memberFeeRefs)
                    await $_getPrefetchedData<
                      MemberInfoData,
                      $MemberInfoTable,
                      MemberFeeData
                    >(
                      currentTable: table,
                      referencedTable: $$MemberInfoTableReferences
                          ._memberFeeRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$MemberInfoTableReferences(
                            db,
                            table,
                            p0,
                          ).memberFeeRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.memberInfoId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
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
      (MemberInfoData, $$MemberInfoTableReferences),
      MemberInfoData,
      PrefetchHooks Function({bool memberFeeRefs})
    >;
typedef $$MemberFeeTableCreateCompanionBuilder =
    MemberFeeCompanion Function({
      Value<int> id,
      required int memberInfoId,
      required double amountPaid,
      required DateTime paidOn,
      required int year,
    });
typedef $$MemberFeeTableUpdateCompanionBuilder =
    MemberFeeCompanion Function({
      Value<int> id,
      Value<int> memberInfoId,
      Value<double> amountPaid,
      Value<DateTime> paidOn,
      Value<int> year,
    });

final class $$MemberFeeTableReferences
    extends BaseReferences<_$AppDatabase, $MemberFeeTable, MemberFeeData> {
  $$MemberFeeTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $MemberInfoTable _memberInfoIdTable(_$AppDatabase db) =>
      db.memberInfo.createAlias(
        $_aliasNameGenerator(db.memberFee.memberInfoId, db.memberInfo.id),
      );

  $$MemberInfoTableProcessedTableManager get memberInfoId {
    final $_column = $_itemColumn<int>('member_info_id')!;

    final manager = $$MemberInfoTableTableManager(
      $_db,
      $_db.memberInfo,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_memberInfoIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$MemberFeeTableFilterComposer
    extends Composer<_$AppDatabase, $MemberFeeTable> {
  $$MemberFeeTableFilterComposer({
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

  ColumnFilters<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get paidOn => $composableBuilder(
    column: $table.paidOn,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  $$MemberInfoTableFilterComposer get memberInfoId {
    final $$MemberInfoTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.memberInfoId,
      referencedTable: $db.memberInfo,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MemberInfoTableFilterComposer(
            $db: $db,
            $table: $db.memberInfo,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MemberFeeTableOrderingComposer
    extends Composer<_$AppDatabase, $MemberFeeTable> {
  $$MemberFeeTableOrderingComposer({
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

  ColumnOrderings<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get paidOn => $composableBuilder(
    column: $table.paidOn,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  $$MemberInfoTableOrderingComposer get memberInfoId {
    final $$MemberInfoTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.memberInfoId,
      referencedTable: $db.memberInfo,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MemberInfoTableOrderingComposer(
            $db: $db,
            $table: $db.memberInfo,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MemberFeeTableAnnotationComposer
    extends Composer<_$AppDatabase, $MemberFeeTable> {
  $$MemberFeeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get amountPaid => $composableBuilder(
    column: $table.amountPaid,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get paidOn =>
      $composableBuilder(column: $table.paidOn, builder: (column) => column);

  GeneratedColumn<int> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  $$MemberInfoTableAnnotationComposer get memberInfoId {
    final $$MemberInfoTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.memberInfoId,
      referencedTable: $db.memberInfo,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MemberInfoTableAnnotationComposer(
            $db: $db,
            $table: $db.memberInfo,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MemberFeeTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MemberFeeTable,
          MemberFeeData,
          $$MemberFeeTableFilterComposer,
          $$MemberFeeTableOrderingComposer,
          $$MemberFeeTableAnnotationComposer,
          $$MemberFeeTableCreateCompanionBuilder,
          $$MemberFeeTableUpdateCompanionBuilder,
          (MemberFeeData, $$MemberFeeTableReferences),
          MemberFeeData,
          PrefetchHooks Function({bool memberInfoId})
        > {
  $$MemberFeeTableTableManager(_$AppDatabase db, $MemberFeeTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MemberFeeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MemberFeeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MemberFeeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> memberInfoId = const Value.absent(),
                Value<double> amountPaid = const Value.absent(),
                Value<DateTime> paidOn = const Value.absent(),
                Value<int> year = const Value.absent(),
              }) => MemberFeeCompanion(
                id: id,
                memberInfoId: memberInfoId,
                amountPaid: amountPaid,
                paidOn: paidOn,
                year: year,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int memberInfoId,
                required double amountPaid,
                required DateTime paidOn,
                required int year,
              }) => MemberFeeCompanion.insert(
                id: id,
                memberInfoId: memberInfoId,
                amountPaid: amountPaid,
                paidOn: paidOn,
                year: year,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MemberFeeTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({memberInfoId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (memberInfoId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.memberInfoId,
                                referencedTable: $$MemberFeeTableReferences
                                    ._memberInfoIdTable(db),
                                referencedColumn: $$MemberFeeTableReferences
                                    ._memberInfoIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$MemberFeeTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MemberFeeTable,
      MemberFeeData,
      $$MemberFeeTableFilterComposer,
      $$MemberFeeTableOrderingComposer,
      $$MemberFeeTableAnnotationComposer,
      $$MemberFeeTableCreateCompanionBuilder,
      $$MemberFeeTableUpdateCompanionBuilder,
      (MemberFeeData, $$MemberFeeTableReferences),
      MemberFeeData,
      PrefetchHooks Function({bool memberInfoId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MemberInfoTableTableManager get memberInfo =>
      $$MemberInfoTableTableManager(_db, _db.memberInfo);
  $$MemberFeeTableTableManager get memberFee =>
      $$MemberFeeTableTableManager(_db, _db.memberFee);
}
