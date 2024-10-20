import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$joinFamily {
  factory Variables$Mutation$joinFamily({required String token}) =>
      Variables$Mutation$joinFamily._({
        r'token': token,
      });

  Variables$Mutation$joinFamily._(this._$data);

  factory Variables$Mutation$joinFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$joinFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$joinFamily<Variables$Mutation$joinFamily>
      get copyWith => CopyWith$Variables$Mutation$joinFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$joinFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Mutation$joinFamily<TRes> {
  factory CopyWith$Variables$Mutation$joinFamily(
    Variables$Mutation$joinFamily instance,
    TRes Function(Variables$Mutation$joinFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$joinFamily;

  factory CopyWith$Variables$Mutation$joinFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$joinFamily;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$joinFamily<TRes>
    implements CopyWith$Variables$Mutation$joinFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$joinFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$joinFamily _instance;

  final TRes Function(Variables$Mutation$joinFamily) _then;

  static const _undefined = {};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$joinFamily._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$joinFamily<TRes>
    implements CopyWith$Variables$Mutation$joinFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$joinFamily(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Mutation$joinFamily {
  Mutation$joinFamily({
    required this.joinFamily,
    required this.$__typename,
  });

  factory Mutation$joinFamily.fromJson(Map<String, dynamic> json) {
    final l$joinFamily = json['joinFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$joinFamily(
      joinFamily: Mutation$joinFamily$joinFamily.fromJson(
          (l$joinFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$joinFamily$joinFamily joinFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$joinFamily = joinFamily;
    _resultData['joinFamily'] = l$joinFamily.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$joinFamily = joinFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$joinFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$joinFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$joinFamily = joinFamily;
    final lOther$joinFamily = other.joinFamily;
    if (l$joinFamily != lOther$joinFamily) {
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

extension UtilityExtension$Mutation$joinFamily on Mutation$joinFamily {
  CopyWith$Mutation$joinFamily<Mutation$joinFamily> get copyWith =>
      CopyWith$Mutation$joinFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$joinFamily<TRes> {
  factory CopyWith$Mutation$joinFamily(
    Mutation$joinFamily instance,
    TRes Function(Mutation$joinFamily) then,
  ) = _CopyWithImpl$Mutation$joinFamily;

  factory CopyWith$Mutation$joinFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$joinFamily;

  TRes call({
    Mutation$joinFamily$joinFamily? joinFamily,
    String? $__typename,
  });
  CopyWith$Mutation$joinFamily$joinFamily<TRes> get joinFamily;
}

class _CopyWithImpl$Mutation$joinFamily<TRes>
    implements CopyWith$Mutation$joinFamily<TRes> {
  _CopyWithImpl$Mutation$joinFamily(
    this._instance,
    this._then,
  );

  final Mutation$joinFamily _instance;

  final TRes Function(Mutation$joinFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? joinFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$joinFamily(
        joinFamily: joinFamily == _undefined || joinFamily == null
            ? _instance.joinFamily
            : (joinFamily as Mutation$joinFamily$joinFamily),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$joinFamily$joinFamily<TRes> get joinFamily {
    final local$joinFamily = _instance.joinFamily;
    return CopyWith$Mutation$joinFamily$joinFamily(
        local$joinFamily, (e) => call(joinFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$joinFamily<TRes>
    implements CopyWith$Mutation$joinFamily<TRes> {
  _CopyWithStubImpl$Mutation$joinFamily(this._res);

  TRes _res;

  call({
    Mutation$joinFamily$joinFamily? joinFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$joinFamily$joinFamily<TRes> get joinFamily =>
      CopyWith$Mutation$joinFamily$joinFamily.stub(_res);
}

const documentNodeMutationjoinFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'joinFamily'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'joinFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'token'),
            value: VariableNode(name: NameNode(value: 'token')),
          )
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
Mutation$joinFamily _parserFn$Mutation$joinFamily(Map<String, dynamic> data) =>
    Mutation$joinFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$joinFamily = FutureOr<void> Function(
  dynamic,
  Mutation$joinFamily?,
);

class Options$Mutation$joinFamily
    extends graphql.MutationOptions<Mutation$joinFamily> {
  Options$Mutation$joinFamily({
    String? operationName,
    required Variables$Mutation$joinFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$joinFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$joinFamily>? update,
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
                    data == null ? null : _parserFn$Mutation$joinFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationjoinFamily,
          parserFn: _parserFn$Mutation$joinFamily,
        );

  final OnMutationCompleted$Mutation$joinFamily? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$joinFamily
    extends graphql.WatchQueryOptions<Mutation$joinFamily> {
  WatchOptions$Mutation$joinFamily({
    String? operationName,
    required Variables$Mutation$joinFamily variables,
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
          document: documentNodeMutationjoinFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$joinFamily,
        );
}

extension ClientExtension$Mutation$joinFamily on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$joinFamily>> mutate$joinFamily(
          Options$Mutation$joinFamily options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$joinFamily> watchMutation$joinFamily(
          WatchOptions$Mutation$joinFamily options) =>
      this.watchMutation(options);
}

class Mutation$joinFamily$joinFamily {
  Mutation$joinFamily$joinFamily({
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$joinFamily$joinFamily.fromJson(Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$joinFamily$joinFamily(
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$joinFamily$joinFamily$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$joinFamily$joinFamily$errors> errors;

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
    if (!(other is Mutation$joinFamily$joinFamily) ||
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

extension UtilityExtension$Mutation$joinFamily$joinFamily
    on Mutation$joinFamily$joinFamily {
  CopyWith$Mutation$joinFamily$joinFamily<Mutation$joinFamily$joinFamily>
      get copyWith => CopyWith$Mutation$joinFamily$joinFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$joinFamily$joinFamily<TRes> {
  factory CopyWith$Mutation$joinFamily$joinFamily(
    Mutation$joinFamily$joinFamily instance,
    TRes Function(Mutation$joinFamily$joinFamily) then,
  ) = _CopyWithImpl$Mutation$joinFamily$joinFamily;

  factory CopyWith$Mutation$joinFamily$joinFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$joinFamily$joinFamily;

  TRes call({
    List<Mutation$joinFamily$joinFamily$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$joinFamily$joinFamily$errors> Function(
              Iterable<
                  CopyWith$Mutation$joinFamily$joinFamily$errors<
                      Mutation$joinFamily$joinFamily$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$joinFamily$joinFamily<TRes>
    implements CopyWith$Mutation$joinFamily$joinFamily<TRes> {
  _CopyWithImpl$Mutation$joinFamily$joinFamily(
    this._instance,
    this._then,
  );

  final Mutation$joinFamily$joinFamily _instance;

  final TRes Function(Mutation$joinFamily$joinFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$joinFamily$joinFamily(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$joinFamily$joinFamily$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$joinFamily$joinFamily$errors> Function(
                  Iterable<
                      CopyWith$Mutation$joinFamily$joinFamily$errors<
                          Mutation$joinFamily$joinFamily$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$joinFamily$joinFamily$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$joinFamily$joinFamily<TRes>
    implements CopyWith$Mutation$joinFamily$joinFamily<TRes> {
  _CopyWithStubImpl$Mutation$joinFamily$joinFamily(this._res);

  TRes _res;

  call({
    List<Mutation$joinFamily$joinFamily$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$joinFamily$joinFamily$errors {
  Mutation$joinFamily$joinFamily$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$joinFamily$joinFamily$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$joinFamily$joinFamily$errors(
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
    if (!(other is Mutation$joinFamily$joinFamily$errors) ||
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

extension UtilityExtension$Mutation$joinFamily$joinFamily$errors
    on Mutation$joinFamily$joinFamily$errors {
  CopyWith$Mutation$joinFamily$joinFamily$errors<
          Mutation$joinFamily$joinFamily$errors>
      get copyWith => CopyWith$Mutation$joinFamily$joinFamily$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$joinFamily$joinFamily$errors<TRes> {
  factory CopyWith$Mutation$joinFamily$joinFamily$errors(
    Mutation$joinFamily$joinFamily$errors instance,
    TRes Function(Mutation$joinFamily$joinFamily$errors) then,
  ) = _CopyWithImpl$Mutation$joinFamily$joinFamily$errors;

  factory CopyWith$Mutation$joinFamily$joinFamily$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$joinFamily$joinFamily$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$joinFamily$joinFamily$errors<TRes>
    implements CopyWith$Mutation$joinFamily$joinFamily$errors<TRes> {
  _CopyWithImpl$Mutation$joinFamily$joinFamily$errors(
    this._instance,
    this._then,
  );

  final Mutation$joinFamily$joinFamily$errors _instance;

  final TRes Function(Mutation$joinFamily$joinFamily$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$joinFamily$joinFamily$errors(
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

class _CopyWithStubImpl$Mutation$joinFamily$joinFamily$errors<TRes>
    implements CopyWith$Mutation$joinFamily$joinFamily$errors<TRes> {
  _CopyWithStubImpl$Mutation$joinFamily$joinFamily$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
