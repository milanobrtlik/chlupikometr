import 'package:chlupikometr_lite/common/graphql/scalar.dart';

class Input$ChildCreateInput {
  factory Input$ChildCreateInput({
    required String name,
    required Upload picture,
  }) =>
      Input$ChildCreateInput._({
        r'name': name,
        r'picture': picture,
      });

  Input$ChildCreateInput._(this._$data);

  factory Input$ChildCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$picture = data['picture'];
    result$data['picture'] = uploadFromJson(l$picture);
    return Input$ChildCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Upload get picture => (_$data['picture'] as Upload);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$picture = picture;
    result$data['picture'] = uploadToJson(l$picture);
    return result$data;
  }

  CopyWith$Input$ChildCreateInput<Input$ChildCreateInput> get copyWith =>
      CopyWith$Input$ChildCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChildCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (l$picture != lOther$picture) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$picture = picture;
    return Object.hashAll([
      l$name,
      l$picture,
    ]);
  }
}

abstract class CopyWith$Input$ChildCreateInput<TRes> {
  factory CopyWith$Input$ChildCreateInput(
    Input$ChildCreateInput instance,
    TRes Function(Input$ChildCreateInput) then,
  ) = _CopyWithImpl$Input$ChildCreateInput;

  factory CopyWith$Input$ChildCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChildCreateInput;

  TRes call({
    String? name,
    Upload? picture,
  });
}

class _CopyWithImpl$Input$ChildCreateInput<TRes>
    implements CopyWith$Input$ChildCreateInput<TRes> {
  _CopyWithImpl$Input$ChildCreateInput(
    this._instance,
    this._then,
  );

  final Input$ChildCreateInput _instance;

  final TRes Function(Input$ChildCreateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$ChildCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (picture != _undefined && picture != null)
          'picture': (picture as Upload),
      }));
}

class _CopyWithStubImpl$Input$ChildCreateInput<TRes>
    implements CopyWith$Input$ChildCreateInput<TRes> {
  _CopyWithStubImpl$Input$ChildCreateInput(this._res);

  TRes _res;

  call({
    String? name,
    Upload? picture,
  }) =>
      _res;
}

class Input$ChildRewardInput {
  factory Input$ChildRewardInput({
    required int childId,
    required int reward,
  }) =>
      Input$ChildRewardInput._({
        r'childId': childId,
        r'reward': reward,
      });

  Input$ChildRewardInput._(this._$data);

  factory Input$ChildRewardInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$childId = data['childId'];
    result$data['childId'] = (l$childId as int);
    final l$reward = data['reward'];
    result$data['reward'] = (l$reward as int);
    return Input$ChildRewardInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get childId => (_$data['childId'] as int);
  int get reward => (_$data['reward'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$childId = childId;
    result$data['childId'] = l$childId;
    final l$reward = reward;
    result$data['reward'] = l$reward;
    return result$data;
  }

  CopyWith$Input$ChildRewardInput<Input$ChildRewardInput> get copyWith =>
      CopyWith$Input$ChildRewardInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChildRewardInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childId = childId;
    final lOther$childId = other.childId;
    if (l$childId != lOther$childId) {
      return false;
    }
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (l$reward != lOther$reward) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childId = childId;
    final l$reward = reward;
    return Object.hashAll([
      l$childId,
      l$reward,
    ]);
  }
}

abstract class CopyWith$Input$ChildRewardInput<TRes> {
  factory CopyWith$Input$ChildRewardInput(
    Input$ChildRewardInput instance,
    TRes Function(Input$ChildRewardInput) then,
  ) = _CopyWithImpl$Input$ChildRewardInput;

  factory CopyWith$Input$ChildRewardInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChildRewardInput;

  TRes call({
    int? childId,
    int? reward,
  });
}

class _CopyWithImpl$Input$ChildRewardInput<TRes>
    implements CopyWith$Input$ChildRewardInput<TRes> {
  _CopyWithImpl$Input$ChildRewardInput(
    this._instance,
    this._then,
  );

  final Input$ChildRewardInput _instance;

  final TRes Function(Input$ChildRewardInput) _then;

  static const _undefined = {};

  TRes call({
    Object? childId = _undefined,
    Object? reward = _undefined,
  }) =>
      _then(Input$ChildRewardInput._({
        ..._instance._$data,
        if (childId != _undefined && childId != null)
          'childId': (childId as int),
        if (reward != _undefined && reward != null) 'reward': (reward as int),
      }));
}

class _CopyWithStubImpl$Input$ChildRewardInput<TRes>
    implements CopyWith$Input$ChildRewardInput<TRes> {
  _CopyWithStubImpl$Input$ChildRewardInput(this._res);

  TRes _res;

  call({
    int? childId,
    int? reward,
  }) =>
      _res;
}

class Input$ChildUpdateInput {
  factory Input$ChildUpdateInput({
    required int childId,
    String? name,
    Upload? picture,
  }) =>
      Input$ChildUpdateInput._({
        r'childId': childId,
        if (name != null) r'name': name,
        if (picture != null) r'picture': picture,
      });

  Input$ChildUpdateInput._(this._$data);

  factory Input$ChildUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$childId = data['childId'];
    result$data['childId'] = (l$childId as int);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('picture')) {
      final l$picture = data['picture'];
      result$data['picture'] =
          l$picture == null ? null : uploadFromJson(l$picture);
    }
    return Input$ChildUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get childId => (_$data['childId'] as int);
  String? get name => (_$data['name'] as String?);
  Upload? get picture => (_$data['picture'] as Upload?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$childId = childId;
    result$data['childId'] = l$childId;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('picture')) {
      final l$picture = picture;
      result$data['picture'] =
          l$picture == null ? null : uploadToJson(l$picture);
    }
    return result$data;
  }

  CopyWith$Input$ChildUpdateInput<Input$ChildUpdateInput> get copyWith =>
      CopyWith$Input$ChildUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ChildUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childId = childId;
    final lOther$childId = other.childId;
    if (l$childId != lOther$childId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$picture = picture;
    final lOther$picture = other.picture;
    if (_$data.containsKey('picture') != other._$data.containsKey('picture')) {
      return false;
    }
    if (l$picture != lOther$picture) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childId = childId;
    final l$name = name;
    final l$picture = picture;
    return Object.hashAll([
      l$childId,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('picture') ? l$picture : const {},
    ]);
  }
}

abstract class CopyWith$Input$ChildUpdateInput<TRes> {
  factory CopyWith$Input$ChildUpdateInput(
    Input$ChildUpdateInput instance,
    TRes Function(Input$ChildUpdateInput) then,
  ) = _CopyWithImpl$Input$ChildUpdateInput;

  factory CopyWith$Input$ChildUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ChildUpdateInput;

  TRes call({
    int? childId,
    String? name,
    Upload? picture,
  });
}

class _CopyWithImpl$Input$ChildUpdateInput<TRes>
    implements CopyWith$Input$ChildUpdateInput<TRes> {
  _CopyWithImpl$Input$ChildUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ChildUpdateInput _instance;

  final TRes Function(Input$ChildUpdateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? childId = _undefined,
    Object? name = _undefined,
    Object? picture = _undefined,
  }) =>
      _then(Input$ChildUpdateInput._({
        ..._instance._$data,
        if (childId != _undefined && childId != null)
          'childId': (childId as int),
        if (name != _undefined) 'name': (name as String?),
        if (picture != _undefined) 'picture': (picture as Upload?),
      }));
}

class _CopyWithStubImpl$Input$ChildUpdateInput<TRes>
    implements CopyWith$Input$ChildUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ChildUpdateInput(this._res);

  TRes _res;

  call({
    int? childId,
    String? name,
    Upload? picture,
  }) =>
      _res;
}

class Input$ComparableDateTimeOperationFilterInput {
  factory Input$ComparableDateTimeOperationFilterInput({
    DateTime? eq,
    DateTime? gt,
    DateTime? gte,
    List<DateTime>? $in,
    DateTime? lt,
    DateTime? lte,
    DateTime? neq,
    DateTime? ngt,
    DateTime? ngte,
    List<DateTime>? nin,
    DateTime? nlt,
    DateTime? nlte,
  }) =>
      Input$ComparableDateTimeOperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if ($in != null) r'in': $in,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (neq != null) r'neq': neq,
        if (ngt != null) r'ngt': ngt,
        if (ngte != null) r'ngte': ngte,
        if (nin != null) r'nin': nin,
        if (nlt != null) r'nlt': nlt,
        if (nlte != null) r'nlte': nlte,
      });

  Input$ComparableDateTimeOperationFilterInput._(this._$data);

  factory Input$ComparableDateTimeOperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : DateTime.parse((l$eq as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : DateTime.parse((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : DateTime.parse((l$gte as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : DateTime.parse((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : DateTime.parse((l$lte as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : DateTime.parse((l$neq as String));
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] =
          l$ngt == null ? null : DateTime.parse((l$ngt as String));
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] =
          l$ngte == null ? null : DateTime.parse((l$ngte as String));
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] = (l$nin as List<dynamic>?)
          ?.map((e) => DateTime.parse((e as String)))
          .toList();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] =
          l$nlt == null ? null : DateTime.parse((l$nlt as String));
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] =
          l$nlte == null ? null : DateTime.parse((l$nlte as String));
    }
    return Input$ComparableDateTimeOperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime? get eq => (_$data['eq'] as DateTime?);
  DateTime? get gt => (_$data['gt'] as DateTime?);
  DateTime? get gte => (_$data['gte'] as DateTime?);
  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);
  DateTime? get lt => (_$data['lt'] as DateTime?);
  DateTime? get lte => (_$data['lte'] as DateTime?);
  DateTime? get neq => (_$data['neq'] as DateTime?);
  DateTime? get ngt => (_$data['ngt'] as DateTime?);
  DateTime? get ngte => (_$data['ngte'] as DateTime?);
  List<DateTime>? get nin => (_$data['nin'] as List<DateTime>?);
  DateTime? get nlt => (_$data['nlt'] as DateTime?);
  DateTime? get nlte => (_$data['nlte'] as DateTime?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq?.toIso8601String();
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt?.toIso8601String();
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte?.toIso8601String();
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt?.toIso8601String();
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte?.toIso8601String();
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq?.toIso8601String();
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt?.toIso8601String();
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte?.toIso8601String();
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e.toIso8601String()).toList();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt?.toIso8601String();
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte?.toIso8601String();
    }
    return result$data;
  }

  CopyWith$Input$ComparableDateTimeOperationFilterInput<
          Input$ComparableDateTimeOperationFilterInput>
      get copyWith => CopyWith$Input$ComparableDateTimeOperationFilterInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ComparableDateTimeOperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$gt = gt;
    final l$gte = gte;
    final l$$in = $in;
    final l$lt = lt;
    final l$lte = lte;
    final l$neq = neq;
    final l$ngt = ngt;
    final l$ngte = ngte;
    final l$nin = nin;
    final l$nlt = nlt;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> {
  factory CopyWith$Input$ComparableDateTimeOperationFilterInput(
    Input$ComparableDateTimeOperationFilterInput instance,
    TRes Function(Input$ComparableDateTimeOperationFilterInput) then,
  ) = _CopyWithImpl$Input$ComparableDateTimeOperationFilterInput;

  factory CopyWith$Input$ComparableDateTimeOperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ComparableDateTimeOperationFilterInput;

  TRes call({
    DateTime? eq,
    DateTime? gt,
    DateTime? gte,
    List<DateTime>? $in,
    DateTime? lt,
    DateTime? lte,
    DateTime? neq,
    DateTime? ngt,
    DateTime? ngte,
    List<DateTime>? nin,
    DateTime? nlt,
    DateTime? nlte,
  });
}

class _CopyWithImpl$Input$ComparableDateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> {
  _CopyWithImpl$Input$ComparableDateTimeOperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ComparableDateTimeOperationFilterInput _instance;

  final TRes Function(Input$ComparableDateTimeOperationFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? eq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? $in = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? neq = _undefined,
    Object? ngt = _undefined,
    Object? ngte = _undefined,
    Object? nin = _undefined,
    Object? nlt = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$ComparableDateTimeOperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime>?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if (ngt != _undefined) 'ngt': (ngt as DateTime?),
        if (ngte != _undefined) 'ngte': (ngte as DateTime?),
        if (nin != _undefined) 'nin': (nin as List<DateTime>?),
        if (nlt != _undefined) 'nlt': (nlt as DateTime?),
        if (nlte != _undefined) 'nlte': (nlte as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$ComparableDateTimeOperationFilterInput<TRes>
    implements CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ComparableDateTimeOperationFilterInput(this._res);

  TRes _res;

  call({
    DateTime? eq,
    DateTime? gt,
    DateTime? gte,
    List<DateTime>? $in,
    DateTime? lt,
    DateTime? lte,
    DateTime? neq,
    DateTime? ngt,
    DateTime? ngte,
    List<DateTime>? nin,
    DateTime? nlt,
    DateTime? nlte,
  }) =>
      _res;
}

class Input$ComparableInt32OperationFilterInput {
  factory Input$ComparableInt32OperationFilterInput({
    int? eq,
    int? gt,
    int? gte,
    List<int>? $in,
    int? lt,
    int? lte,
    int? neq,
    int? ngt,
    int? ngte,
    List<int>? nin,
    int? nlt,
    int? nlte,
  }) =>
      Input$ComparableInt32OperationFilterInput._({
        if (eq != null) r'eq': eq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if ($in != null) r'in': $in,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (neq != null) r'neq': neq,
        if (ngt != null) r'ngt': ngt,
        if (ngte != null) r'ngte': ngte,
        if (nin != null) r'nin': nin,
        if (nlt != null) r'nlt': nlt,
        if (nlte != null) r'nlte': nlte,
      });

  Input$ComparableInt32OperationFilterInput._(this._$data);

  factory Input$ComparableInt32OperationFilterInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('ngt')) {
      final l$ngt = data['ngt'];
      result$data['ngt'] = (l$ngt as int?);
    }
    if (data.containsKey('ngte')) {
      final l$ngte = data['ngte'];
      result$data['ngte'] = (l$ngte as int?);
    }
    if (data.containsKey('nin')) {
      final l$nin = data['nin'];
      result$data['nin'] =
          (l$nin as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('nlt')) {
      final l$nlt = data['nlt'];
      result$data['nlt'] = (l$nlt as int?);
    }
    if (data.containsKey('nlte')) {
      final l$nlte = data['nlte'];
      result$data['nlte'] = (l$nlte as int?);
    }
    return Input$ComparableInt32OperationFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get eq => (_$data['eq'] as int?);
  int? get gt => (_$data['gt'] as int?);
  int? get gte => (_$data['gte'] as int?);
  List<int>? get $in => (_$data['in'] as List<int>?);
  int? get lt => (_$data['lt'] as int?);
  int? get lte => (_$data['lte'] as int?);
  int? get neq => (_$data['neq'] as int?);
  int? get ngt => (_$data['ngt'] as int?);
  int? get ngte => (_$data['ngte'] as int?);
  List<int>? get nin => (_$data['nin'] as List<int>?);
  int? get nlt => (_$data['nlt'] as int?);
  int? get nlte => (_$data['nlte'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('ngt')) {
      final l$ngt = ngt;
      result$data['ngt'] = l$ngt;
    }
    if (_$data.containsKey('ngte')) {
      final l$ngte = ngte;
      result$data['ngte'] = l$ngte;
    }
    if (_$data.containsKey('nin')) {
      final l$nin = nin;
      result$data['nin'] = l$nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('nlt')) {
      final l$nlt = nlt;
      result$data['nlt'] = l$nlt;
    }
    if (_$data.containsKey('nlte')) {
      final l$nlte = nlte;
      result$data['nlte'] = l$nlte;
    }
    return result$data;
  }

  CopyWith$Input$ComparableInt32OperationFilterInput<
          Input$ComparableInt32OperationFilterInput>
      get copyWith => CopyWith$Input$ComparableInt32OperationFilterInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ComparableInt32OperationFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$ngt = ngt;
    final lOther$ngt = other.ngt;
    if (_$data.containsKey('ngt') != other._$data.containsKey('ngt')) {
      return false;
    }
    if (l$ngt != lOther$ngt) {
      return false;
    }
    final l$ngte = ngte;
    final lOther$ngte = other.ngte;
    if (_$data.containsKey('ngte') != other._$data.containsKey('ngte')) {
      return false;
    }
    if (l$ngte != lOther$ngte) {
      return false;
    }
    final l$nin = nin;
    final lOther$nin = other.nin;
    if (_$data.containsKey('nin') != other._$data.containsKey('nin')) {
      return false;
    }
    if (l$nin != null && lOther$nin != null) {
      if (l$nin.length != lOther$nin.length) {
        return false;
      }
      for (int i = 0; i < l$nin.length; i++) {
        final l$nin$entry = l$nin[i];
        final lOther$nin$entry = lOther$nin[i];
        if (l$nin$entry != lOther$nin$entry) {
          return false;
        }
      }
    } else if (l$nin != lOther$nin) {
      return false;
    }
    final l$nlt = nlt;
    final lOther$nlt = other.nlt;
    if (_$data.containsKey('nlt') != other._$data.containsKey('nlt')) {
      return false;
    }
    if (l$nlt != lOther$nlt) {
      return false;
    }
    final l$nlte = nlte;
    final lOther$nlte = other.nlte;
    if (_$data.containsKey('nlte') != other._$data.containsKey('nlte')) {
      return false;
    }
    if (l$nlte != lOther$nlte) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eq = eq;
    final l$gt = gt;
    final l$gte = gte;
    final l$$in = $in;
    final l$lt = lt;
    final l$lte = lte;
    final l$neq = neq;
    final l$ngt = ngt;
    final l$ngte = ngte;
    final l$nin = nin;
    final l$nlt = nlt;
    final l$nlte = nlte;
    return Object.hashAll([
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('ngt') ? l$ngt : const {},
      _$data.containsKey('ngte') ? l$ngte : const {},
      _$data.containsKey('nin')
          ? l$nin == null
              ? null
              : Object.hashAll(l$nin.map((v) => v))
          : const {},
      _$data.containsKey('nlt') ? l$nlt : const {},
      _$data.containsKey('nlte') ? l$nlte : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  factory CopyWith$Input$ComparableInt32OperationFilterInput(
    Input$ComparableInt32OperationFilterInput instance,
    TRes Function(Input$ComparableInt32OperationFilterInput) then,
  ) = _CopyWithImpl$Input$ComparableInt32OperationFilterInput;

  factory CopyWith$Input$ComparableInt32OperationFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput;

  TRes call({
    int? eq,
    int? gt,
    int? gte,
    List<int>? $in,
    int? lt,
    int? lte,
    int? neq,
    int? ngt,
    int? ngte,
    List<int>? nin,
    int? nlt,
    int? nlte,
  });
}

class _CopyWithImpl$Input$ComparableInt32OperationFilterInput<TRes>
    implements CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  _CopyWithImpl$Input$ComparableInt32OperationFilterInput(
    this._instance,
    this._then,
  );

  final Input$ComparableInt32OperationFilterInput _instance;

  final TRes Function(Input$ComparableInt32OperationFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? eq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? $in = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? neq = _undefined,
    Object? ngt = _undefined,
    Object? ngte = _undefined,
    Object? nin = _undefined,
    Object? nlt = _undefined,
    Object? nlte = _undefined,
  }) =>
      _then(Input$ComparableInt32OperationFilterInput._({
        ..._instance._$data,
        if (eq != _undefined) 'eq': (eq as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if (ngt != _undefined) 'ngt': (ngt as int?),
        if (ngte != _undefined) 'ngte': (ngte as int?),
        if (nin != _undefined) 'nin': (nin as List<int>?),
        if (nlt != _undefined) 'nlt': (nlt as int?),
        if (nlte != _undefined) 'nlte': (nlte as int?),
      }));
}

class _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput<TRes>
    implements CopyWith$Input$ComparableInt32OperationFilterInput<TRes> {
  _CopyWithStubImpl$Input$ComparableInt32OperationFilterInput(this._res);

  TRes _res;

  call({
    int? eq,
    int? gt,
    int? gte,
    List<int>? $in,
    int? lt,
    int? lte,
    int? neq,
    int? ngt,
    int? ngte,
    List<int>? nin,
    int? nlt,
    int? nlte,
  }) =>
      _res;
}

class Input$FamilyCreateInput {
  factory Input$FamilyCreateInput({required String name}) =>
      Input$FamilyCreateInput._({
        r'name': name,
      });

  Input$FamilyCreateInput._(this._$data);

  factory Input$FamilyCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$FamilyCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$FamilyCreateInput<Input$FamilyCreateInput> get copyWith =>
      CopyWith$Input$FamilyCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$FamilyCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$FamilyCreateInput<TRes> {
  factory CopyWith$Input$FamilyCreateInput(
    Input$FamilyCreateInput instance,
    TRes Function(Input$FamilyCreateInput) then,
  ) = _CopyWithImpl$Input$FamilyCreateInput;

  factory CopyWith$Input$FamilyCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FamilyCreateInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$FamilyCreateInput<TRes>
    implements CopyWith$Input$FamilyCreateInput<TRes> {
  _CopyWithImpl$Input$FamilyCreateInput(
    this._instance,
    this._then,
  );

  final Input$FamilyCreateInput _instance;

  final TRes Function(Input$FamilyCreateInput) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Input$FamilyCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$FamilyCreateInput<TRes>
    implements CopyWith$Input$FamilyCreateInput<TRes> {
  _CopyWithStubImpl$Input$FamilyCreateInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$InventoryCreateInput {
  factory Input$InventoryCreateInput({
    String? description,
    required List<Input$InventoryLevelCreateInput> levels,
    required String title,
  }) =>
      Input$InventoryCreateInput._({
        if (description != null) r'description': description,
        r'levels': levels,
        r'title': title,
      });

  Input$InventoryCreateInput._(this._$data);

  factory Input$InventoryCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$levels = data['levels'];
    result$data['levels'] = (l$levels as List<dynamic>)
        .map((e) => Input$InventoryLevelCreateInput.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$InventoryCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get description => (_$data['description'] as String?);
  List<Input$InventoryLevelCreateInput> get levels =>
      (_$data['levels'] as List<Input$InventoryLevelCreateInput>);
  String get title => (_$data['title'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$levels = levels;
    result$data['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$InventoryCreateInput<Input$InventoryCreateInput>
      get copyWith => CopyWith$Input$InventoryCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InventoryCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$levels = levels;
    final lOther$levels = other.levels;
    if (l$levels.length != lOther$levels.length) {
      return false;
    }
    for (int i = 0; i < l$levels.length; i++) {
      final l$levels$entry = l$levels[i];
      final lOther$levels$entry = lOther$levels[i];
      if (l$levels$entry != lOther$levels$entry) {
        return false;
      }
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$levels = levels;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      Object.hashAll(l$levels.map((v) => v)),
      l$title,
    ]);
  }
}

abstract class CopyWith$Input$InventoryCreateInput<TRes> {
  factory CopyWith$Input$InventoryCreateInput(
    Input$InventoryCreateInput instance,
    TRes Function(Input$InventoryCreateInput) then,
  ) = _CopyWithImpl$Input$InventoryCreateInput;

  factory CopyWith$Input$InventoryCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InventoryCreateInput;

  TRes call({
    String? description,
    List<Input$InventoryLevelCreateInput>? levels,
    String? title,
  });
  TRes levels(
      Iterable<Input$InventoryLevelCreateInput> Function(
              Iterable<
                  CopyWith$Input$InventoryLevelCreateInput<
                      Input$InventoryLevelCreateInput>>)
          _fn);
}

class _CopyWithImpl$Input$InventoryCreateInput<TRes>
    implements CopyWith$Input$InventoryCreateInput<TRes> {
  _CopyWithImpl$Input$InventoryCreateInput(
    this._instance,
    this._then,
  );

  final Input$InventoryCreateInput _instance;

  final TRes Function(Input$InventoryCreateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? levels = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$InventoryCreateInput._({
        ..._instance._$data,
        if (description != _undefined) 'description': (description as String?),
        if (levels != _undefined && levels != null)
          'levels': (levels as List<Input$InventoryLevelCreateInput>),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
  TRes levels(
          Iterable<Input$InventoryLevelCreateInput> Function(
                  Iterable<
                      CopyWith$Input$InventoryLevelCreateInput<
                          Input$InventoryLevelCreateInput>>)
              _fn) =>
      call(
          levels: _fn(_instance.levels
              .map((e) => CopyWith$Input$InventoryLevelCreateInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$InventoryCreateInput<TRes>
    implements CopyWith$Input$InventoryCreateInput<TRes> {
  _CopyWithStubImpl$Input$InventoryCreateInput(this._res);

  TRes _res;

  call({
    String? description,
    List<Input$InventoryLevelCreateInput>? levels,
    String? title,
  }) =>
      _res;
  levels(_fn) => _res;
}

class Input$InventoryLevelCreateInput {
  factory Input$InventoryLevelCreateInput({
    String? description,
    required int reward,
    required String title,
  }) =>
      Input$InventoryLevelCreateInput._({
        if (description != null) r'description': description,
        r'reward': reward,
        r'title': title,
      });

  Input$InventoryLevelCreateInput._(this._$data);

  factory Input$InventoryLevelCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$reward = data['reward'];
    result$data['reward'] = (l$reward as int);
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    return Input$InventoryLevelCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get description => (_$data['description'] as String?);
  int get reward => (_$data['reward'] as int);
  String get title => (_$data['title'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$reward = reward;
    result$data['reward'] = l$reward;
    final l$title = title;
    result$data['title'] = l$title;
    return result$data;
  }

  CopyWith$Input$InventoryLevelCreateInput<Input$InventoryLevelCreateInput>
      get copyWith => CopyWith$Input$InventoryLevelCreateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InventoryLevelCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (l$reward != lOther$reward) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$reward = reward;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      l$reward,
      l$title,
    ]);
  }
}

abstract class CopyWith$Input$InventoryLevelCreateInput<TRes> {
  factory CopyWith$Input$InventoryLevelCreateInput(
    Input$InventoryLevelCreateInput instance,
    TRes Function(Input$InventoryLevelCreateInput) then,
  ) = _CopyWithImpl$Input$InventoryLevelCreateInput;

  factory CopyWith$Input$InventoryLevelCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InventoryLevelCreateInput;

  TRes call({
    String? description,
    int? reward,
    String? title,
  });
}

class _CopyWithImpl$Input$InventoryLevelCreateInput<TRes>
    implements CopyWith$Input$InventoryLevelCreateInput<TRes> {
  _CopyWithImpl$Input$InventoryLevelCreateInput(
    this._instance,
    this._then,
  );

  final Input$InventoryLevelCreateInput _instance;

  final TRes Function(Input$InventoryLevelCreateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? reward = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$InventoryLevelCreateInput._({
        ..._instance._$data,
        if (description != _undefined) 'description': (description as String?),
        if (reward != _undefined && reward != null) 'reward': (reward as int),
        if (title != _undefined && title != null) 'title': (title as String),
      }));
}

class _CopyWithStubImpl$Input$InventoryLevelCreateInput<TRes>
    implements CopyWith$Input$InventoryLevelCreateInput<TRes> {
  _CopyWithStubImpl$Input$InventoryLevelCreateInput(this._res);

  TRes _res;

  call({
    String? description,
    int? reward,
    String? title,
  }) =>
      _res;
}

class Input$InventoryLevelUpdateInput {
  factory Input$InventoryLevelUpdateInput({
    String? description,
    int? levelId,
    int? reward,
    String? title,
  }) =>
      Input$InventoryLevelUpdateInput._({
        if (description != null) r'description': description,
        if (levelId != null) r'levelId': levelId,
        if (reward != null) r'reward': reward,
        if (title != null) r'title': title,
      });

  Input$InventoryLevelUpdateInput._(this._$data);

  factory Input$InventoryLevelUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('levelId')) {
      final l$levelId = data['levelId'];
      result$data['levelId'] = (l$levelId as int?);
    }
    if (data.containsKey('reward')) {
      final l$reward = data['reward'];
      result$data['reward'] = (l$reward as int?);
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    return Input$InventoryLevelUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get description => (_$data['description'] as String?);
  int? get levelId => (_$data['levelId'] as int?);
  int? get reward => (_$data['reward'] as int?);
  String? get title => (_$data['title'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('levelId')) {
      final l$levelId = levelId;
      result$data['levelId'] = l$levelId;
    }
    if (_$data.containsKey('reward')) {
      final l$reward = reward;
      result$data['reward'] = l$reward;
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    return result$data;
  }

  CopyWith$Input$InventoryLevelUpdateInput<Input$InventoryLevelUpdateInput>
      get copyWith => CopyWith$Input$InventoryLevelUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InventoryLevelUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$levelId = levelId;
    final lOther$levelId = other.levelId;
    if (_$data.containsKey('levelId') != other._$data.containsKey('levelId')) {
      return false;
    }
    if (l$levelId != lOther$levelId) {
      return false;
    }
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (_$data.containsKey('reward') != other._$data.containsKey('reward')) {
      return false;
    }
    if (l$reward != lOther$reward) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$levelId = levelId;
    final l$reward = reward;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('levelId') ? l$levelId : const {},
      _$data.containsKey('reward') ? l$reward : const {},
      _$data.containsKey('title') ? l$title : const {},
    ]);
  }
}

abstract class CopyWith$Input$InventoryLevelUpdateInput<TRes> {
  factory CopyWith$Input$InventoryLevelUpdateInput(
    Input$InventoryLevelUpdateInput instance,
    TRes Function(Input$InventoryLevelUpdateInput) then,
  ) = _CopyWithImpl$Input$InventoryLevelUpdateInput;

  factory CopyWith$Input$InventoryLevelUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InventoryLevelUpdateInput;

  TRes call({
    String? description,
    int? levelId,
    int? reward,
    String? title,
  });
}

class _CopyWithImpl$Input$InventoryLevelUpdateInput<TRes>
    implements CopyWith$Input$InventoryLevelUpdateInput<TRes> {
  _CopyWithImpl$Input$InventoryLevelUpdateInput(
    this._instance,
    this._then,
  );

  final Input$InventoryLevelUpdateInput _instance;

  final TRes Function(Input$InventoryLevelUpdateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? levelId = _undefined,
    Object? reward = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$InventoryLevelUpdateInput._({
        ..._instance._$data,
        if (description != _undefined) 'description': (description as String?),
        if (levelId != _undefined) 'levelId': (levelId as int?),
        if (reward != _undefined) 'reward': (reward as int?),
        if (title != _undefined) 'title': (title as String?),
      }));
}

class _CopyWithStubImpl$Input$InventoryLevelUpdateInput<TRes>
    implements CopyWith$Input$InventoryLevelUpdateInput<TRes> {
  _CopyWithStubImpl$Input$InventoryLevelUpdateInput(this._res);

  TRes _res;

  call({
    String? description,
    int? levelId,
    int? reward,
    String? title,
  }) =>
      _res;
}

class Input$InventoryUpdateInput {
  factory Input$InventoryUpdateInput({
    String? description,
    List<Input$InventoryLevelUpdateInput>? levels,
    String? title,
  }) =>
      Input$InventoryUpdateInput._({
        if (description != null) r'description': description,
        if (levels != null) r'levels': levels,
        if (title != null) r'title': title,
      });

  Input$InventoryUpdateInput._(this._$data);

  factory Input$InventoryUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('levels')) {
      final l$levels = data['levels'];
      result$data['levels'] = (l$levels as List<dynamic>?)
          ?.map((e) => Input$InventoryLevelUpdateInput.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    return Input$InventoryUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get description => (_$data['description'] as String?);
  List<Input$InventoryLevelUpdateInput>? get levels =>
      (_$data['levels'] as List<Input$InventoryLevelUpdateInput>?);
  String? get title => (_$data['title'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('levels')) {
      final l$levels = levels;
      result$data['levels'] = l$levels?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    return result$data;
  }

  CopyWith$Input$InventoryUpdateInput<Input$InventoryUpdateInput>
      get copyWith => CopyWith$Input$InventoryUpdateInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InventoryUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$levels = levels;
    final lOther$levels = other.levels;
    if (_$data.containsKey('levels') != other._$data.containsKey('levels')) {
      return false;
    }
    if (l$levels != null && lOther$levels != null) {
      if (l$levels.length != lOther$levels.length) {
        return false;
      }
      for (int i = 0; i < l$levels.length; i++) {
        final l$levels$entry = l$levels[i];
        final lOther$levels$entry = lOther$levels[i];
        if (l$levels$entry != lOther$levels$entry) {
          return false;
        }
      }
    } else if (l$levels != lOther$levels) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$description = description;
    final l$levels = levels;
    final l$title = title;
    return Object.hashAll([
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('levels')
          ? l$levels == null
              ? null
              : Object.hashAll(l$levels.map((v) => v))
          : const {},
      _$data.containsKey('title') ? l$title : const {},
    ]);
  }
}

abstract class CopyWith$Input$InventoryUpdateInput<TRes> {
  factory CopyWith$Input$InventoryUpdateInput(
    Input$InventoryUpdateInput instance,
    TRes Function(Input$InventoryUpdateInput) then,
  ) = _CopyWithImpl$Input$InventoryUpdateInput;

  factory CopyWith$Input$InventoryUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InventoryUpdateInput;

  TRes call({
    String? description,
    List<Input$InventoryLevelUpdateInput>? levels,
    String? title,
  });
  TRes levels(
      Iterable<Input$InventoryLevelUpdateInput>? Function(
              Iterable<
                  CopyWith$Input$InventoryLevelUpdateInput<
                      Input$InventoryLevelUpdateInput>>?)
          _fn);
}

class _CopyWithImpl$Input$InventoryUpdateInput<TRes>
    implements CopyWith$Input$InventoryUpdateInput<TRes> {
  _CopyWithImpl$Input$InventoryUpdateInput(
    this._instance,
    this._then,
  );

  final Input$InventoryUpdateInput _instance;

  final TRes Function(Input$InventoryUpdateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? description = _undefined,
    Object? levels = _undefined,
    Object? title = _undefined,
  }) =>
      _then(Input$InventoryUpdateInput._({
        ..._instance._$data,
        if (description != _undefined) 'description': (description as String?),
        if (levels != _undefined)
          'levels': (levels as List<Input$InventoryLevelUpdateInput>?),
        if (title != _undefined) 'title': (title as String?),
      }));
  TRes levels(
          Iterable<Input$InventoryLevelUpdateInput>? Function(
                  Iterable<
                      CopyWith$Input$InventoryLevelUpdateInput<
                          Input$InventoryLevelUpdateInput>>?)
              _fn) =>
      call(
          levels: _fn(_instance.levels
              ?.map((e) => CopyWith$Input$InventoryLevelUpdateInput(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Input$InventoryUpdateInput<TRes>
    implements CopyWith$Input$InventoryUpdateInput<TRes> {
  _CopyWithStubImpl$Input$InventoryUpdateInput(this._res);

  TRes _res;

  call({
    String? description,
    List<Input$InventoryLevelUpdateInput>? levels,
    String? title,
  }) =>
      _res;
  levels(_fn) => _res;
}

class Input$LedgerFilterInput {
  factory Input$LedgerFilterInput({
    List<Input$LedgerFilterInput>? and,
    Input$ComparableInt32OperationFilterInput? childId,
    Input$ComparableDateTimeOperationFilterInput? enteredAt,
    List<Input$LedgerFilterInput>? or,
  }) =>
      Input$LedgerFilterInput._({
        if (and != null) r'and': and,
        if (childId != null) r'childId': childId,
        if (enteredAt != null) r'enteredAt': enteredAt,
        if (or != null) r'or': or,
      });

  Input$LedgerFilterInput._(this._$data);

  factory Input$LedgerFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$LedgerFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('childId')) {
      final l$childId = data['childId'];
      result$data['childId'] = l$childId == null
          ? null
          : Input$ComparableInt32OperationFilterInput.fromJson(
              (l$childId as Map<String, dynamic>));
    }
    if (data.containsKey('enteredAt')) {
      final l$enteredAt = data['enteredAt'];
      result$data['enteredAt'] = l$enteredAt == null
          ? null
          : Input$ComparableDateTimeOperationFilterInput.fromJson(
              (l$enteredAt as Map<String, dynamic>));
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$LedgerFilterInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Input$LedgerFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$LedgerFilterInput>? get and =>
      (_$data['and'] as List<Input$LedgerFilterInput>?);
  Input$ComparableInt32OperationFilterInput? get childId =>
      (_$data['childId'] as Input$ComparableInt32OperationFilterInput?);
  Input$ComparableDateTimeOperationFilterInput? get enteredAt =>
      (_$data['enteredAt'] as Input$ComparableDateTimeOperationFilterInput?);
  List<Input$LedgerFilterInput>? get or =>
      (_$data['or'] as List<Input$LedgerFilterInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('childId')) {
      final l$childId = childId;
      result$data['childId'] = l$childId?.toJson();
    }
    if (_$data.containsKey('enteredAt')) {
      final l$enteredAt = enteredAt;
      result$data['enteredAt'] = l$enteredAt?.toJson();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Input$LedgerFilterInput<Input$LedgerFilterInput> get copyWith =>
      CopyWith$Input$LedgerFilterInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LedgerFilterInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$childId = childId;
    final lOther$childId = other.childId;
    if (_$data.containsKey('childId') != other._$data.containsKey('childId')) {
      return false;
    }
    if (l$childId != lOther$childId) {
      return false;
    }
    final l$enteredAt = enteredAt;
    final lOther$enteredAt = other.enteredAt;
    if (_$data.containsKey('enteredAt') !=
        other._$data.containsKey('enteredAt')) {
      return false;
    }
    if (l$enteredAt != lOther$enteredAt) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$childId = childId;
    final l$enteredAt = enteredAt;
    final l$or = or;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('childId') ? l$childId : const {},
      _$data.containsKey('enteredAt') ? l$enteredAt : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$LedgerFilterInput<TRes> {
  factory CopyWith$Input$LedgerFilterInput(
    Input$LedgerFilterInput instance,
    TRes Function(Input$LedgerFilterInput) then,
  ) = _CopyWithImpl$Input$LedgerFilterInput;

  factory CopyWith$Input$LedgerFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LedgerFilterInput;

  TRes call({
    List<Input$LedgerFilterInput>? and,
    Input$ComparableInt32OperationFilterInput? childId,
    Input$ComparableDateTimeOperationFilterInput? enteredAt,
    List<Input$LedgerFilterInput>? or,
  });
  TRes and(
      Iterable<Input$LedgerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$LedgerFilterInput<Input$LedgerFilterInput>>?)
          _fn);
  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get childId;
  CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> get enteredAt;
  TRes or(
      Iterable<Input$LedgerFilterInput>? Function(
              Iterable<
                  CopyWith$Input$LedgerFilterInput<Input$LedgerFilterInput>>?)
          _fn);
}

class _CopyWithImpl$Input$LedgerFilterInput<TRes>
    implements CopyWith$Input$LedgerFilterInput<TRes> {
  _CopyWithImpl$Input$LedgerFilterInput(
    this._instance,
    this._then,
  );

  final Input$LedgerFilterInput _instance;

  final TRes Function(Input$LedgerFilterInput) _then;

  static const _undefined = {};

  TRes call({
    Object? and = _undefined,
    Object? childId = _undefined,
    Object? enteredAt = _undefined,
    Object? or = _undefined,
  }) =>
      _then(Input$LedgerFilterInput._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$LedgerFilterInput>?),
        if (childId != _undefined)
          'childId': (childId as Input$ComparableInt32OperationFilterInput?),
        if (enteredAt != _undefined)
          'enteredAt':
              (enteredAt as Input$ComparableDateTimeOperationFilterInput?),
        if (or != _undefined) 'or': (or as List<Input$LedgerFilterInput>?),
      }));
  TRes and(
          Iterable<Input$LedgerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$LedgerFilterInput<
                          Input$LedgerFilterInput>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$LedgerFilterInput(
                e,
                (i) => i,
              )))?.toList());
  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get childId {
    final local$childId = _instance.childId;
    return local$childId == null
        ? CopyWith$Input$ComparableInt32OperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ComparableInt32OperationFilterInput(
            local$childId, (e) => call(childId: e));
  }

  CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> get enteredAt {
    final local$enteredAt = _instance.enteredAt;
    return local$enteredAt == null
        ? CopyWith$Input$ComparableDateTimeOperationFilterInput.stub(
            _then(_instance))
        : CopyWith$Input$ComparableDateTimeOperationFilterInput(
            local$enteredAt, (e) => call(enteredAt: e));
  }

  TRes or(
          Iterable<Input$LedgerFilterInput>? Function(
                  Iterable<
                      CopyWith$Input$LedgerFilterInput<
                          Input$LedgerFilterInput>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$LedgerFilterInput(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Input$LedgerFilterInput<TRes>
    implements CopyWith$Input$LedgerFilterInput<TRes> {
  _CopyWithStubImpl$Input$LedgerFilterInput(this._res);

  TRes _res;

  call({
    List<Input$LedgerFilterInput>? and,
    Input$ComparableInt32OperationFilterInput? childId,
    Input$ComparableDateTimeOperationFilterInput? enteredAt,
    List<Input$LedgerFilterInput>? or,
  }) =>
      _res;
  and(_fn) => _res;
  CopyWith$Input$ComparableInt32OperationFilterInput<TRes> get childId =>
      CopyWith$Input$ComparableInt32OperationFilterInput.stub(_res);
  CopyWith$Input$ComparableDateTimeOperationFilterInput<TRes> get enteredAt =>
      CopyWith$Input$ComparableDateTimeOperationFilterInput.stub(_res);
  or(_fn) => _res;
}

class Input$LedgerInsertInput {
  factory Input$LedgerInsertInput({
    required List<Input$ChildRewardInput> childRewards,
    required int inventoryId,
    String? userNote,
  }) =>
      Input$LedgerInsertInput._({
        r'childRewards': childRewards,
        r'inventoryId': inventoryId,
        if (userNote != null) r'userNote': userNote,
      });

  Input$LedgerInsertInput._(this._$data);

  factory Input$LedgerInsertInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$childRewards = data['childRewards'];
    result$data['childRewards'] = (l$childRewards as List<dynamic>)
        .map(
            (e) => Input$ChildRewardInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$inventoryId = data['inventoryId'];
    result$data['inventoryId'] = (l$inventoryId as int);
    if (data.containsKey('userNote')) {
      final l$userNote = data['userNote'];
      result$data['userNote'] = (l$userNote as String?);
    }
    return Input$LedgerInsertInput._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ChildRewardInput> get childRewards =>
      (_$data['childRewards'] as List<Input$ChildRewardInput>);
  int get inventoryId => (_$data['inventoryId'] as int);
  String? get userNote => (_$data['userNote'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$childRewards = childRewards;
    result$data['childRewards'] =
        l$childRewards.map((e) => e.toJson()).toList();
    final l$inventoryId = inventoryId;
    result$data['inventoryId'] = l$inventoryId;
    if (_$data.containsKey('userNote')) {
      final l$userNote = userNote;
      result$data['userNote'] = l$userNote;
    }
    return result$data;
  }

  CopyWith$Input$LedgerInsertInput<Input$LedgerInsertInput> get copyWith =>
      CopyWith$Input$LedgerInsertInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LedgerInsertInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$childRewards = childRewards;
    final lOther$childRewards = other.childRewards;
    if (l$childRewards.length != lOther$childRewards.length) {
      return false;
    }
    for (int i = 0; i < l$childRewards.length; i++) {
      final l$childRewards$entry = l$childRewards[i];
      final lOther$childRewards$entry = lOther$childRewards[i];
      if (l$childRewards$entry != lOther$childRewards$entry) {
        return false;
      }
    }
    final l$inventoryId = inventoryId;
    final lOther$inventoryId = other.inventoryId;
    if (l$inventoryId != lOther$inventoryId) {
      return false;
    }
    final l$userNote = userNote;
    final lOther$userNote = other.userNote;
    if (_$data.containsKey('userNote') !=
        other._$data.containsKey('userNote')) {
      return false;
    }
    if (l$userNote != lOther$userNote) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$childRewards = childRewards;
    final l$inventoryId = inventoryId;
    final l$userNote = userNote;
    return Object.hashAll([
      Object.hashAll(l$childRewards.map((v) => v)),
      l$inventoryId,
      _$data.containsKey('userNote') ? l$userNote : const {},
    ]);
  }
}

abstract class CopyWith$Input$LedgerInsertInput<TRes> {
  factory CopyWith$Input$LedgerInsertInput(
    Input$LedgerInsertInput instance,
    TRes Function(Input$LedgerInsertInput) then,
  ) = _CopyWithImpl$Input$LedgerInsertInput;

  factory CopyWith$Input$LedgerInsertInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LedgerInsertInput;

  TRes call({
    List<Input$ChildRewardInput>? childRewards,
    int? inventoryId,
    String? userNote,
  });
  TRes childRewards(
      Iterable<Input$ChildRewardInput> Function(
              Iterable<CopyWith$Input$ChildRewardInput<Input$ChildRewardInput>>)
          _fn);
}

class _CopyWithImpl$Input$LedgerInsertInput<TRes>
    implements CopyWith$Input$LedgerInsertInput<TRes> {
  _CopyWithImpl$Input$LedgerInsertInput(
    this._instance,
    this._then,
  );

  final Input$LedgerInsertInput _instance;

  final TRes Function(Input$LedgerInsertInput) _then;

  static const _undefined = {};

  TRes call({
    Object? childRewards = _undefined,
    Object? inventoryId = _undefined,
    Object? userNote = _undefined,
  }) =>
      _then(Input$LedgerInsertInput._({
        ..._instance._$data,
        if (childRewards != _undefined && childRewards != null)
          'childRewards': (childRewards as List<Input$ChildRewardInput>),
        if (inventoryId != _undefined && inventoryId != null)
          'inventoryId': (inventoryId as int),
        if (userNote != _undefined) 'userNote': (userNote as String?),
      }));
  TRes childRewards(
          Iterable<Input$ChildRewardInput> Function(
                  Iterable<
                      CopyWith$Input$ChildRewardInput<Input$ChildRewardInput>>)
              _fn) =>
      call(
          childRewards: _fn(
              _instance.childRewards.map((e) => CopyWith$Input$ChildRewardInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$LedgerInsertInput<TRes>
    implements CopyWith$Input$LedgerInsertInput<TRes> {
  _CopyWithStubImpl$Input$LedgerInsertInput(this._res);

  TRes _res;

  call({
    List<Input$ChildRewardInput>? childRewards,
    int? inventoryId,
    String? userNote,
  }) =>
      _res;
  childRewards(_fn) => _res;
}

class Input$LedgerSortInput {
  factory Input$LedgerSortInput({Enum$SortEnumType? enteredAt}) =>
      Input$LedgerSortInput._({
        if (enteredAt != null) r'enteredAt': enteredAt,
      });

  Input$LedgerSortInput._(this._$data);

  factory Input$LedgerSortInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('enteredAt')) {
      final l$enteredAt = data['enteredAt'];
      result$data['enteredAt'] = l$enteredAt == null
          ? null
          : fromJson$Enum$SortEnumType((l$enteredAt as String));
    }
    return Input$LedgerSortInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SortEnumType? get enteredAt =>
      (_$data['enteredAt'] as Enum$SortEnumType?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('enteredAt')) {
      final l$enteredAt = enteredAt;
      result$data['enteredAt'] =
          l$enteredAt == null ? null : toJson$Enum$SortEnumType(l$enteredAt);
    }
    return result$data;
  }

  CopyWith$Input$LedgerSortInput<Input$LedgerSortInput> get copyWith =>
      CopyWith$Input$LedgerSortInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LedgerSortInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$enteredAt = enteredAt;
    final lOther$enteredAt = other.enteredAt;
    if (_$data.containsKey('enteredAt') !=
        other._$data.containsKey('enteredAt')) {
      return false;
    }
    if (l$enteredAt != lOther$enteredAt) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$enteredAt = enteredAt;
    return Object.hashAll(
        [_$data.containsKey('enteredAt') ? l$enteredAt : const {}]);
  }
}

abstract class CopyWith$Input$LedgerSortInput<TRes> {
  factory CopyWith$Input$LedgerSortInput(
    Input$LedgerSortInput instance,
    TRes Function(Input$LedgerSortInput) then,
  ) = _CopyWithImpl$Input$LedgerSortInput;

  factory CopyWith$Input$LedgerSortInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LedgerSortInput;

  TRes call({Enum$SortEnumType? enteredAt});
}

class _CopyWithImpl$Input$LedgerSortInput<TRes>
    implements CopyWith$Input$LedgerSortInput<TRes> {
  _CopyWithImpl$Input$LedgerSortInput(
    this._instance,
    this._then,
  );

  final Input$LedgerSortInput _instance;

  final TRes Function(Input$LedgerSortInput) _then;

  static const _undefined = {};

  TRes call({Object? enteredAt = _undefined}) => _then(Input$LedgerSortInput._({
        ..._instance._$data,
        if (enteredAt != _undefined)
          'enteredAt': (enteredAt as Enum$SortEnumType?),
      }));
}

class _CopyWithStubImpl$Input$LedgerSortInput<TRes>
    implements CopyWith$Input$LedgerSortInput<TRes> {
  _CopyWithStubImpl$Input$LedgerSortInput(this._res);

  TRes _res;

  call({Enum$SortEnumType? enteredAt}) => _res;
}

enum Enum$ApplyPolicy { AFTER_RESOLVER, BEFORE_RESOLVER, $unknown }

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$FamilyUserKind { BABYSITTER, CHILD, FOUNDER, PARENT, $unknown }

String toJson$Enum$FamilyUserKind(Enum$FamilyUserKind e) {
  switch (e) {
    case Enum$FamilyUserKind.BABYSITTER:
      return r'BABYSITTER';
    case Enum$FamilyUserKind.CHILD:
      return r'CHILD';
    case Enum$FamilyUserKind.FOUNDER:
      return r'FOUNDER';
    case Enum$FamilyUserKind.PARENT:
      return r'PARENT';
    case Enum$FamilyUserKind.$unknown:
      return r'$unknown';
  }
}

Enum$FamilyUserKind fromJson$Enum$FamilyUserKind(String value) {
  switch (value) {
    case r'BABYSITTER':
      return Enum$FamilyUserKind.BABYSITTER;
    case r'CHILD':
      return Enum$FamilyUserKind.CHILD;
    case r'FOUNDER':
      return Enum$FamilyUserKind.FOUNDER;
    case r'PARENT':
      return Enum$FamilyUserKind.PARENT;
    default:
      return Enum$FamilyUserKind.$unknown;
  }
}

enum Enum$SortEnumType { ASC, DESC, $unknown }

String toJson$Enum$SortEnumType(Enum$SortEnumType e) {
  switch (e) {
    case Enum$SortEnumType.ASC:
      return r'ASC';
    case Enum$SortEnumType.DESC:
      return r'DESC';
    case Enum$SortEnumType.$unknown:
      return r'$unknown';
  }
}

Enum$SortEnumType fromJson$Enum$SortEnumType(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortEnumType.ASC;
    case r'DESC':
      return Enum$SortEnumType.DESC;
    default:
      return Enum$SortEnumType.$unknown;
  }
}

const possibleTypesMap = {};
