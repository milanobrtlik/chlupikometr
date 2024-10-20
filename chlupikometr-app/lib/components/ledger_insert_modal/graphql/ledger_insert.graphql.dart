import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$ledgerInsert {
  factory Variables$Mutation$ledgerInsert({
    required int familyId,
    required Input$LedgerInsertInput input,
  }) =>
      Variables$Mutation$ledgerInsert._({
        r'familyId': familyId,
        r'input': input,
      });

  Variables$Mutation$ledgerInsert._(this._$data);

  factory Variables$Mutation$ledgerInsert.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$input = data['input'];
    result$data['input'] =
        Input$LedgerInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$ledgerInsert._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$LedgerInsertInput get input =>
      (_$data['input'] as Input$LedgerInsertInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$ledgerInsert<Variables$Mutation$ledgerInsert>
      get copyWith => CopyWith$Variables$Mutation$ledgerInsert(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ledgerInsert) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$input = input;
    return Object.hashAll([
      l$familyId,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ledgerInsert<TRes> {
  factory CopyWith$Variables$Mutation$ledgerInsert(
    Variables$Mutation$ledgerInsert instance,
    TRes Function(Variables$Mutation$ledgerInsert) then,
  ) = _CopyWithImpl$Variables$Mutation$ledgerInsert;

  factory CopyWith$Variables$Mutation$ledgerInsert.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ledgerInsert;

  TRes call({
    int? familyId,
    Input$LedgerInsertInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$ledgerInsert<TRes>
    implements CopyWith$Variables$Mutation$ledgerInsert<TRes> {
  _CopyWithImpl$Variables$Mutation$ledgerInsert(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ledgerInsert _instance;

  final TRes Function(Variables$Mutation$ledgerInsert) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$ledgerInsert._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (input != _undefined && input != null)
          'input': (input as Input$LedgerInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ledgerInsert<TRes>
    implements CopyWith$Variables$Mutation$ledgerInsert<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ledgerInsert(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$LedgerInsertInput? input,
  }) =>
      _res;
}

class Mutation$ledgerInsert {
  Mutation$ledgerInsert({
    required this.ledgerInsert,
    required this.$__typename,
  });

  factory Mutation$ledgerInsert.fromJson(Map<String, dynamic> json) {
    final l$ledgerInsert = json['ledgerInsert'];
    final l$$__typename = json['__typename'];
    return Mutation$ledgerInsert(
      ledgerInsert: Mutation$ledgerInsert$ledgerInsert.fromJson(
          (l$ledgerInsert as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ledgerInsert$ledgerInsert ledgerInsert;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ledgerInsert = ledgerInsert;
    _resultData['ledgerInsert'] = l$ledgerInsert.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ledgerInsert = ledgerInsert;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ledgerInsert,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ledgerInsert) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ledgerInsert = ledgerInsert;
    final lOther$ledgerInsert = other.ledgerInsert;
    if (l$ledgerInsert != lOther$ledgerInsert) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ledgerInsert on Mutation$ledgerInsert {
  CopyWith$Mutation$ledgerInsert<Mutation$ledgerInsert> get copyWith =>
      CopyWith$Mutation$ledgerInsert(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ledgerInsert<TRes> {
  factory CopyWith$Mutation$ledgerInsert(
    Mutation$ledgerInsert instance,
    TRes Function(Mutation$ledgerInsert) then,
  ) = _CopyWithImpl$Mutation$ledgerInsert;

  factory CopyWith$Mutation$ledgerInsert.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ledgerInsert;

  TRes call({
    Mutation$ledgerInsert$ledgerInsert? ledgerInsert,
    String? $__typename,
  });
  CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> get ledgerInsert;
}

class _CopyWithImpl$Mutation$ledgerInsert<TRes>
    implements CopyWith$Mutation$ledgerInsert<TRes> {
  _CopyWithImpl$Mutation$ledgerInsert(
    this._instance,
    this._then,
  );

  final Mutation$ledgerInsert _instance;

  final TRes Function(Mutation$ledgerInsert) _then;

  static const _undefined = {};

  TRes call({
    Object? ledgerInsert = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ledgerInsert(
        ledgerInsert: ledgerInsert == _undefined || ledgerInsert == null
            ? _instance.ledgerInsert
            : (ledgerInsert as Mutation$ledgerInsert$ledgerInsert),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> get ledgerInsert {
    final local$ledgerInsert = _instance.ledgerInsert;
    return CopyWith$Mutation$ledgerInsert$ledgerInsert(
        local$ledgerInsert, (e) => call(ledgerInsert: e));
  }
}

class _CopyWithStubImpl$Mutation$ledgerInsert<TRes>
    implements CopyWith$Mutation$ledgerInsert<TRes> {
  _CopyWithStubImpl$Mutation$ledgerInsert(this._res);

  TRes _res;

  call({
    Mutation$ledgerInsert$ledgerInsert? ledgerInsert,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> get ledgerInsert =>
      CopyWith$Mutation$ledgerInsert$ledgerInsert.stub(_res);
}

const documentNodeMutationledgerInsert = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ledgerInsert'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'LedgerInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ledgerInsert'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$ledgerInsert _parserFn$Mutation$ledgerInsert(
        Map<String, dynamic> data) =>
    Mutation$ledgerInsert.fromJson(data);
typedef OnMutationCompleted$Mutation$ledgerInsert = FutureOr<void> Function(
  dynamic,
  Mutation$ledgerInsert?,
);

class Options$Mutation$ledgerInsert
    extends graphql.MutationOptions<Mutation$ledgerInsert> {
  Options$Mutation$ledgerInsert({
    String? operationName,
    required Variables$Mutation$ledgerInsert variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ledgerInsert? onCompleted,
    graphql.OnMutationUpdate<Mutation$ledgerInsert>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$ledgerInsert(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationledgerInsert,
          parserFn: _parserFn$Mutation$ledgerInsert,
        );

  final OnMutationCompleted$Mutation$ledgerInsert? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ledgerInsert
    extends graphql.WatchQueryOptions<Mutation$ledgerInsert> {
  WatchOptions$Mutation$ledgerInsert({
    String? operationName,
    required Variables$Mutation$ledgerInsert variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationledgerInsert,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ledgerInsert,
        );
}

extension ClientExtension$Mutation$ledgerInsert on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ledgerInsert>> mutate$ledgerInsert(
          Options$Mutation$ledgerInsert options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ledgerInsert> watchMutation$ledgerInsert(
          WatchOptions$Mutation$ledgerInsert options) =>
      this.watchMutation(options);
}

class Mutation$ledgerInsert$ledgerInsert {
  Mutation$ledgerInsert$ledgerInsert({
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$ledgerInsert$ledgerInsert.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$ledgerInsert$ledgerInsert(
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$ledgerInsert$ledgerInsert$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$ledgerInsert$ledgerInsert$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ledgerInsert$ledgerInsert) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ledgerInsert$ledgerInsert
    on Mutation$ledgerInsert$ledgerInsert {
  CopyWith$Mutation$ledgerInsert$ledgerInsert<
          Mutation$ledgerInsert$ledgerInsert>
      get copyWith => CopyWith$Mutation$ledgerInsert$ledgerInsert(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> {
  factory CopyWith$Mutation$ledgerInsert$ledgerInsert(
    Mutation$ledgerInsert$ledgerInsert instance,
    TRes Function(Mutation$ledgerInsert$ledgerInsert) then,
  ) = _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert;

  factory CopyWith$Mutation$ledgerInsert$ledgerInsert.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert;

  TRes call({
    List<Mutation$ledgerInsert$ledgerInsert$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$ledgerInsert$ledgerInsert$errors> Function(
              Iterable<
                  CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<
                      Mutation$ledgerInsert$ledgerInsert$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert<TRes>
    implements CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> {
  _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert(
    this._instance,
    this._then,
  );

  final Mutation$ledgerInsert$ledgerInsert _instance;

  final TRes Function(Mutation$ledgerInsert$ledgerInsert) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ledgerInsert$ledgerInsert(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$ledgerInsert$ledgerInsert$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$ledgerInsert$ledgerInsert$errors> Function(
                  Iterable<
                      CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<
                          Mutation$ledgerInsert$ledgerInsert$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$ledgerInsert$ledgerInsert$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert<TRes>
    implements CopyWith$Mutation$ledgerInsert$ledgerInsert<TRes> {
  _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert(this._res);

  TRes _res;

  call({
    List<Mutation$ledgerInsert$ledgerInsert$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$ledgerInsert$ledgerInsert$errors {
  Mutation$ledgerInsert$ledgerInsert$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$ledgerInsert$ledgerInsert$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$ledgerInsert$ledgerInsert$errors(
      code: (l$code as String),
      message: (l$message as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ledgerInsert$ledgerInsert$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$ledgerInsert$ledgerInsert$errors
    on Mutation$ledgerInsert$ledgerInsert$errors {
  CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<
          Mutation$ledgerInsert$ledgerInsert$errors>
      get copyWith => CopyWith$Mutation$ledgerInsert$ledgerInsert$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<TRes> {
  factory CopyWith$Mutation$ledgerInsert$ledgerInsert$errors(
    Mutation$ledgerInsert$ledgerInsert$errors instance,
    TRes Function(Mutation$ledgerInsert$ledgerInsert$errors) then,
  ) = _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert$errors;

  factory CopyWith$Mutation$ledgerInsert$ledgerInsert$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert$errors<TRes>
    implements CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<TRes> {
  _CopyWithImpl$Mutation$ledgerInsert$ledgerInsert$errors(
    this._instance,
    this._then,
  );

  final Mutation$ledgerInsert$ledgerInsert$errors _instance;

  final TRes Function(Mutation$ledgerInsert$ledgerInsert$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ledgerInsert$ledgerInsert$errors(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert$errors<TRes>
    implements CopyWith$Mutation$ledgerInsert$ledgerInsert$errors<TRes> {
  _CopyWithStubImpl$Mutation$ledgerInsert$ledgerInsert$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ledgerInsertDetail {
  factory Variables$Query$ledgerInsertDetail({
    required int id,
    required int familyId,
  }) =>
      Variables$Query$ledgerInsertDetail._({
        r'id': id,
        r'familyId': familyId,
      });

  Variables$Query$ledgerInsertDetail._(this._$data);

  factory Variables$Query$ledgerInsertDetail.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    return Variables$Query$ledgerInsertDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  int get familyId => (_$data['familyId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    return result$data;
  }

  CopyWith$Variables$Query$ledgerInsertDetail<
          Variables$Query$ledgerInsertDetail>
      get copyWith => CopyWith$Variables$Query$ledgerInsertDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ledgerInsertDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyId = familyId;
    return Object.hashAll([
      l$id,
      l$familyId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ledgerInsertDetail<TRes> {
  factory CopyWith$Variables$Query$ledgerInsertDetail(
    Variables$Query$ledgerInsertDetail instance,
    TRes Function(Variables$Query$ledgerInsertDetail) then,
  ) = _CopyWithImpl$Variables$Query$ledgerInsertDetail;

  factory CopyWith$Variables$Query$ledgerInsertDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ledgerInsertDetail;

  TRes call({
    int? id,
    int? familyId,
  });
}

class _CopyWithImpl$Variables$Query$ledgerInsertDetail<TRes>
    implements CopyWith$Variables$Query$ledgerInsertDetail<TRes> {
  _CopyWithImpl$Variables$Query$ledgerInsertDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$ledgerInsertDetail _instance;

  final TRes Function(Variables$Query$ledgerInsertDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? familyId = _undefined,
  }) =>
      _then(Variables$Query$ledgerInsertDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$ledgerInsertDetail<TRes>
    implements CopyWith$Variables$Query$ledgerInsertDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$ledgerInsertDetail(this._res);

  TRes _res;

  call({
    int? id,
    int? familyId,
  }) =>
      _res;
}

class Query$ledgerInsertDetail {
  Query$ledgerInsertDetail({
    required this.inventoryDetail,
    required this.children,
    required this.$__typename,
  });

  factory Query$ledgerInsertDetail.fromJson(Map<String, dynamic> json) {
    final l$inventoryDetail = json['inventoryDetail'];
    final l$children = json['children'];
    final l$$__typename = json['__typename'];
    return Query$ledgerInsertDetail(
      inventoryDetail: Query$ledgerInsertDetail$inventoryDetail.fromJson(
          (l$inventoryDetail as Map<String, dynamic>)),
      children: (l$children as List<dynamic>)
          .map((e) => Query$ledgerInsertDetail$children.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ledgerInsertDetail$inventoryDetail inventoryDetail;

  final List<Query$ledgerInsertDetail$children> children;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryDetail = inventoryDetail;
    _resultData['inventoryDetail'] = l$inventoryDetail.toJson();
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryDetail = inventoryDetail;
    final l$children = children;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventoryDetail,
      Object.hashAll(l$children.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerInsertDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryDetail = inventoryDetail;
    final lOther$inventoryDetail = other.inventoryDetail;
    if (l$inventoryDetail != lOther$inventoryDetail) {
      return false;
    }
    final l$children = children;
    final lOther$children = other.children;
    if (l$children.length != lOther$children.length) {
      return false;
    }
    for (int i = 0; i < l$children.length; i++) {
      final l$children$entry = l$children[i];
      final lOther$children$entry = lOther$children[i];
      if (l$children$entry != lOther$children$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ledgerInsertDetail
    on Query$ledgerInsertDetail {
  CopyWith$Query$ledgerInsertDetail<Query$ledgerInsertDetail> get copyWith =>
      CopyWith$Query$ledgerInsertDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ledgerInsertDetail<TRes> {
  factory CopyWith$Query$ledgerInsertDetail(
    Query$ledgerInsertDetail instance,
    TRes Function(Query$ledgerInsertDetail) then,
  ) = _CopyWithImpl$Query$ledgerInsertDetail;

  factory CopyWith$Query$ledgerInsertDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerInsertDetail;

  TRes call({
    Query$ledgerInsertDetail$inventoryDetail? inventoryDetail,
    List<Query$ledgerInsertDetail$children>? children,
    String? $__typename,
  });
  CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> get inventoryDetail;
  TRes children(
      Iterable<Query$ledgerInsertDetail$children> Function(
              Iterable<
                  CopyWith$Query$ledgerInsertDetail$children<
                      Query$ledgerInsertDetail$children>>)
          _fn);
}

class _CopyWithImpl$Query$ledgerInsertDetail<TRes>
    implements CopyWith$Query$ledgerInsertDetail<TRes> {
  _CopyWithImpl$Query$ledgerInsertDetail(
    this._instance,
    this._then,
  );

  final Query$ledgerInsertDetail _instance;

  final TRes Function(Query$ledgerInsertDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? inventoryDetail = _undefined,
    Object? children = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerInsertDetail(
        inventoryDetail:
            inventoryDetail == _undefined || inventoryDetail == null
                ? _instance.inventoryDetail
                : (inventoryDetail as Query$ledgerInsertDetail$inventoryDetail),
        children: children == _undefined || children == null
            ? _instance.children
            : (children as List<Query$ledgerInsertDetail$children>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> get inventoryDetail {
    final local$inventoryDetail = _instance.inventoryDetail;
    return CopyWith$Query$ledgerInsertDetail$inventoryDetail(
        local$inventoryDetail, (e) => call(inventoryDetail: e));
  }

  TRes children(
          Iterable<Query$ledgerInsertDetail$children> Function(
                  Iterable<
                      CopyWith$Query$ledgerInsertDetail$children<
                          Query$ledgerInsertDetail$children>>)
              _fn) =>
      call(
          children: _fn(_instance.children
              .map((e) => CopyWith$Query$ledgerInsertDetail$children(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ledgerInsertDetail<TRes>
    implements CopyWith$Query$ledgerInsertDetail<TRes> {
  _CopyWithStubImpl$Query$ledgerInsertDetail(this._res);

  TRes _res;

  call({
    Query$ledgerInsertDetail$inventoryDetail? inventoryDetail,
    List<Query$ledgerInsertDetail$children>? children,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> get inventoryDetail =>
      CopyWith$Query$ledgerInsertDetail$inventoryDetail.stub(_res);
  children(_fn) => _res;
}

const documentNodeQueryledgerInsertDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ledgerInsertDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'inventoryDetail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'inventory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'title'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'levels'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'reward'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'isInitial'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'iconData'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'children'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'pictureUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$ledgerInsertDetail _parserFn$Query$ledgerInsertDetail(
        Map<String, dynamic> data) =>
    Query$ledgerInsertDetail.fromJson(data);

class Options$Query$ledgerInsertDetail
    extends graphql.QueryOptions<Query$ledgerInsertDetail> {
  Options$Query$ledgerInsertDetail({
    String? operationName,
    required Variables$Query$ledgerInsertDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryledgerInsertDetail,
          parserFn: _parserFn$Query$ledgerInsertDetail,
        );
}

class WatchOptions$Query$ledgerInsertDetail
    extends graphql.WatchQueryOptions<Query$ledgerInsertDetail> {
  WatchOptions$Query$ledgerInsertDetail({
    String? operationName,
    required Variables$Query$ledgerInsertDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryledgerInsertDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ledgerInsertDetail,
        );
}

class FetchMoreOptions$Query$ledgerInsertDetail
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ledgerInsertDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ledgerInsertDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryledgerInsertDetail,
        );
}

extension ClientExtension$Query$ledgerInsertDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ledgerInsertDetail>>
      query$ledgerInsertDetail(
              Options$Query$ledgerInsertDetail options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ledgerInsertDetail>
      watchQuery$ledgerInsertDetail(
              WatchOptions$Query$ledgerInsertDetail options) =>
          this.watchQuery(options);
  void writeQuery$ledgerInsertDetail({
    required Query$ledgerInsertDetail data,
    required Variables$Query$ledgerInsertDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryledgerInsertDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ledgerInsertDetail? readQuery$ledgerInsertDetail({
    required Variables$Query$ledgerInsertDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryledgerInsertDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ledgerInsertDetail.fromJson(result);
  }
}

class Query$ledgerInsertDetail$inventoryDetail {
  Query$ledgerInsertDetail$inventoryDetail({
    this.inventory,
    required this.$__typename,
  });

  factory Query$ledgerInsertDetail$inventoryDetail.fromJson(
      Map<String, dynamic> json) {
    final l$inventory = json['inventory'];
    final l$$__typename = json['__typename'];
    return Query$ledgerInsertDetail$inventoryDetail(
      inventory: l$inventory == null
          ? null
          : Query$ledgerInsertDetail$inventoryDetail$inventory.fromJson(
              (l$inventory as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ledgerInsertDetail$inventoryDetail$inventory? inventory;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventory = inventory;
    _resultData['inventory'] = l$inventory?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventory = inventory;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventory,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerInsertDetail$inventoryDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventory = inventory;
    final lOther$inventory = other.inventory;
    if (l$inventory != lOther$inventory) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ledgerInsertDetail$inventoryDetail
    on Query$ledgerInsertDetail$inventoryDetail {
  CopyWith$Query$ledgerInsertDetail$inventoryDetail<
          Query$ledgerInsertDetail$inventoryDetail>
      get copyWith => CopyWith$Query$ledgerInsertDetail$inventoryDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> {
  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail(
    Query$ledgerInsertDetail$inventoryDetail instance,
    TRes Function(Query$ledgerInsertDetail$inventoryDetail) then,
  ) = _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail;

  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail;

  TRes call({
    Query$ledgerInsertDetail$inventoryDetail$inventory? inventory,
    String? $__typename,
  });
  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes>
      get inventory;
}

class _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail<TRes>
    implements CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> {
  _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail(
    this._instance,
    this._then,
  );

  final Query$ledgerInsertDetail$inventoryDetail _instance;

  final TRes Function(Query$ledgerInsertDetail$inventoryDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? inventory = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerInsertDetail$inventoryDetail(
        inventory: inventory == _undefined
            ? _instance.inventory
            : (inventory
                as Query$ledgerInsertDetail$inventoryDetail$inventory?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes>
      get inventory {
    final local$inventory = _instance.inventory;
    return local$inventory == null
        ? CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory.stub(
            _then(_instance))
        : CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory(
            local$inventory, (e) => call(inventory: e));
  }
}

class _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail<TRes>
    implements CopyWith$Query$ledgerInsertDetail$inventoryDetail<TRes> {
  _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail(this._res);

  TRes _res;

  call({
    Query$ledgerInsertDetail$inventoryDetail$inventory? inventory,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes>
      get inventory =>
          CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory.stub(
              _res);
}

class Query$ledgerInsertDetail$inventoryDetail$inventory {
  Query$ledgerInsertDetail$inventoryDetail$inventory({
    required this.id,
    required this.title,
    required this.levels,
    this.description,
    this.iconData,
    required this.$__typename,
  });

  factory Query$ledgerInsertDetail$inventoryDetail$inventory.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$levels = json['levels'];
    final l$description = json['description'];
    final l$iconData = json['iconData'];
    final l$$__typename = json['__typename'];
    return Query$ledgerInsertDetail$inventoryDetail$inventory(
      id: (l$id as int),
      title: (l$title as String),
      levels: (l$levels as List<dynamic>)
          .map((e) => Query$ledgerInsertDetail$inventoryDetail$inventory$levels
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      description: (l$description as String?),
      iconData: (l$iconData as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final List<Query$ledgerInsertDetail$inventoryDetail$inventory$levels> levels;

  final String? description;

  final int? iconData;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$levels = levels;
    _resultData['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$iconData = iconData;
    _resultData['iconData'] = l$iconData;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$levels = levels;
    final l$description = description;
    final l$iconData = iconData;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      Object.hashAll(l$levels.map((v) => v)),
      l$description,
      l$iconData,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerInsertDetail$inventoryDetail$inventory) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$iconData = iconData;
    final lOther$iconData = other.iconData;
    if (l$iconData != lOther$iconData) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ledgerInsertDetail$inventoryDetail$inventory
    on Query$ledgerInsertDetail$inventoryDetail$inventory {
  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<
          Query$ledgerInsertDetail$inventoryDetail$inventory>
      get copyWith =>
          CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<
    TRes> {
  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory(
    Query$ledgerInsertDetail$inventoryDetail$inventory instance,
    TRes Function(Query$ledgerInsertDetail$inventoryDetail$inventory) then,
  ) = _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory;

  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory;

  TRes call({
    int? id,
    String? title,
    List<Query$ledgerInsertDetail$inventoryDetail$inventory$levels>? levels,
    String? description,
    int? iconData,
    String? $__typename,
  });
  TRes levels(
      Iterable<Query$ledgerInsertDetail$inventoryDetail$inventory$levels> Function(
              Iterable<
                  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
                      Query$ledgerInsertDetail$inventoryDetail$inventory$levels>>)
          _fn);
}

class _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes>
    implements
        CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes> {
  _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory(
    this._instance,
    this._then,
  );

  final Query$ledgerInsertDetail$inventoryDetail$inventory _instance;

  final TRes Function(Query$ledgerInsertDetail$inventoryDetail$inventory) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? levels = _undefined,
    Object? description = _undefined,
    Object? iconData = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerInsertDetail$inventoryDetail$inventory(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        levels: levels == _undefined || levels == null
            ? _instance.levels
            : (levels as List<
                Query$ledgerInsertDetail$inventoryDetail$inventory$levels>),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconData:
            iconData == _undefined ? _instance.iconData : (iconData as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes levels(
          Iterable<Query$ledgerInsertDetail$inventoryDetail$inventory$levels> Function(
                  Iterable<
                      CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
                          Query$ledgerInsertDetail$inventoryDetail$inventory$levels>>)
              _fn) =>
      call(
          levels: _fn(_instance.levels.map((e) =>
              CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes>
    implements
        CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory<TRes> {
  _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    List<Query$ledgerInsertDetail$inventoryDetail$inventory$levels>? levels,
    String? description,
    int? iconData,
    String? $__typename,
  }) =>
      _res;
  levels(_fn) => _res;
}

class Query$ledgerInsertDetail$inventoryDetail$inventory$levels {
  Query$ledgerInsertDetail$inventoryDetail$inventory$levels({
    required this.id,
    required this.title,
    required this.reward,
    required this.isInitial,
    this.description,
    required this.$__typename,
  });

  factory Query$ledgerInsertDetail$inventoryDetail$inventory$levels.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$reward = json['reward'];
    final l$isInitial = json['isInitial'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
      id: (l$id as int),
      title: (l$title as String),
      reward: (l$reward as int),
      isInitial: (l$isInitial as bool),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final int reward;

  final bool isInitial;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$reward = reward;
    _resultData['reward'] = l$reward;
    final l$isInitial = isInitial;
    _resultData['isInitial'] = l$isInitial;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$reward = reward;
    final l$isInitial = isInitial;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$reward,
      l$isInitial,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerInsertDetail$inventoryDetail$inventory$levels) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (l$reward != lOther$reward) {
      return false;
    }
    final l$isInitial = isInitial;
    final lOther$isInitial = other.isInitial;
    if (l$isInitial != lOther$isInitial) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ledgerInsertDetail$inventoryDetail$inventory$levels
    on Query$ledgerInsertDetail$inventoryDetail$inventory$levels {
  CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
          Query$ledgerInsertDetail$inventoryDetail$inventory$levels>
      get copyWith =>
          CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
    TRes> {
  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
    Query$ledgerInsertDetail$inventoryDetail$inventory$levels instance,
    TRes Function(Query$ledgerInsertDetail$inventoryDetail$inventory$levels)
        then,
  ) = _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels;

  factory CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels;

  TRes call({
    int? id,
    String? title,
    int? reward,
    bool? isInitial,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
        TRes>
    implements
        CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
            TRes> {
  _CopyWithImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
    this._instance,
    this._then,
  );

  final Query$ledgerInsertDetail$inventoryDetail$inventory$levels _instance;

  final TRes Function(Query$ledgerInsertDetail$inventoryDetail$inventory$levels)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? reward = _undefined,
    Object? isInitial = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        reward: reward == _undefined || reward == null
            ? _instance.reward
            : (reward as int),
        isInitial: isInitial == _undefined || isInitial == null
            ? _instance.isInitial
            : (isInitial as bool),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
        TRes>
    implements
        CopyWith$Query$ledgerInsertDetail$inventoryDetail$inventory$levels<
            TRes> {
  _CopyWithStubImpl$Query$ledgerInsertDetail$inventoryDetail$inventory$levels(
      this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    int? reward,
    bool? isInitial,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class Query$ledgerInsertDetail$children {
  Query$ledgerInsertDetail$children({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$ledgerInsertDetail$children.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$ledgerInsertDetail$children(
      id: (l$id as int),
      name: (l$name as String),
      pictureUrl: (l$pictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? pictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pictureUrl = pictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$pictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerInsertDetail$children) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pictureUrl = pictureUrl;
    final lOther$pictureUrl = other.pictureUrl;
    if (l$pictureUrl != lOther$pictureUrl) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ledgerInsertDetail$children
    on Query$ledgerInsertDetail$children {
  CopyWith$Query$ledgerInsertDetail$children<Query$ledgerInsertDetail$children>
      get copyWith => CopyWith$Query$ledgerInsertDetail$children(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerInsertDetail$children<TRes> {
  factory CopyWith$Query$ledgerInsertDetail$children(
    Query$ledgerInsertDetail$children instance,
    TRes Function(Query$ledgerInsertDetail$children) then,
  ) = _CopyWithImpl$Query$ledgerInsertDetail$children;

  factory CopyWith$Query$ledgerInsertDetail$children.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerInsertDetail$children;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ledgerInsertDetail$children<TRes>
    implements CopyWith$Query$ledgerInsertDetail$children<TRes> {
  _CopyWithImpl$Query$ledgerInsertDetail$children(
    this._instance,
    this._then,
  );

  final Query$ledgerInsertDetail$children _instance;

  final TRes Function(Query$ledgerInsertDetail$children) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerInsertDetail$children(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pictureUrl: pictureUrl == _undefined
            ? _instance.pictureUrl
            : (pictureUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ledgerInsertDetail$children<TRes>
    implements CopyWith$Query$ledgerInsertDetail$children<TRes> {
  _CopyWithStubImpl$Query$ledgerInsertDetail$children(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}
