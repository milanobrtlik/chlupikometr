import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$googleSignIn {
  factory Variables$Mutation$googleSignIn({required String idToken}) =>
      Variables$Mutation$googleSignIn._({
        r'idToken': idToken,
      });

  Variables$Mutation$googleSignIn._(this._$data);

  factory Variables$Mutation$googleSignIn.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$idToken = data['idToken'];
    result$data['idToken'] = (l$idToken as String);
    return Variables$Mutation$googleSignIn._(result$data);
  }

  Map<String, dynamic> _$data;

  String get idToken => (_$data['idToken'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$idToken = idToken;
    result$data['idToken'] = l$idToken;
    return result$data;
  }

  CopyWith$Variables$Mutation$googleSignIn<Variables$Mutation$googleSignIn>
      get copyWith => CopyWith$Variables$Mutation$googleSignIn(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$googleSignIn) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$idToken = idToken;
    final lOther$idToken = other.idToken;
    if (l$idToken != lOther$idToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$idToken = idToken;
    return Object.hashAll([l$idToken]);
  }
}

abstract class CopyWith$Variables$Mutation$googleSignIn<TRes> {
  factory CopyWith$Variables$Mutation$googleSignIn(
    Variables$Mutation$googleSignIn instance,
    TRes Function(Variables$Mutation$googleSignIn) then,
  ) = _CopyWithImpl$Variables$Mutation$googleSignIn;

  factory CopyWith$Variables$Mutation$googleSignIn.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$googleSignIn;

  TRes call({String? idToken});
}

class _CopyWithImpl$Variables$Mutation$googleSignIn<TRes>
    implements CopyWith$Variables$Mutation$googleSignIn<TRes> {
  _CopyWithImpl$Variables$Mutation$googleSignIn(
    this._instance,
    this._then,
  );

  final Variables$Mutation$googleSignIn _instance;

  final TRes Function(Variables$Mutation$googleSignIn) _then;

  static const _undefined = {};

  TRes call({Object? idToken = _undefined}) =>
      _then(Variables$Mutation$googleSignIn._({
        ..._instance._$data,
        if (idToken != _undefined && idToken != null)
          'idToken': (idToken as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$googleSignIn<TRes>
    implements CopyWith$Variables$Mutation$googleSignIn<TRes> {
  _CopyWithStubImpl$Variables$Mutation$googleSignIn(this._res);

  TRes _res;

  call({String? idToken}) => _res;
}

class Mutation$googleSignIn {
  Mutation$googleSignIn({
    required this.googleSignIn,
    required this.$__typename,
  });

  factory Mutation$googleSignIn.fromJson(Map<String, dynamic> json) {
    final l$googleSignIn = json['googleSignIn'];
    final l$$__typename = json['__typename'];
    return Mutation$googleSignIn(
      googleSignIn: Mutation$googleSignIn$googleSignIn.fromJson(
          (l$googleSignIn as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$googleSignIn$googleSignIn googleSignIn;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$googleSignIn = googleSignIn;
    _resultData['googleSignIn'] = l$googleSignIn.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$googleSignIn = googleSignIn;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$googleSignIn,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$googleSignIn) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$googleSignIn = googleSignIn;
    final lOther$googleSignIn = other.googleSignIn;
    if (l$googleSignIn != lOther$googleSignIn) {
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

extension UtilityExtension$Mutation$googleSignIn on Mutation$googleSignIn {
  CopyWith$Mutation$googleSignIn<Mutation$googleSignIn> get copyWith =>
      CopyWith$Mutation$googleSignIn(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$googleSignIn<TRes> {
  factory CopyWith$Mutation$googleSignIn(
    Mutation$googleSignIn instance,
    TRes Function(Mutation$googleSignIn) then,
  ) = _CopyWithImpl$Mutation$googleSignIn;

  factory CopyWith$Mutation$googleSignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$googleSignIn;

  TRes call({
    Mutation$googleSignIn$googleSignIn? googleSignIn,
    String? $__typename,
  });
  CopyWith$Mutation$googleSignIn$googleSignIn<TRes> get googleSignIn;
}

class _CopyWithImpl$Mutation$googleSignIn<TRes>
    implements CopyWith$Mutation$googleSignIn<TRes> {
  _CopyWithImpl$Mutation$googleSignIn(
    this._instance,
    this._then,
  );

  final Mutation$googleSignIn _instance;

  final TRes Function(Mutation$googleSignIn) _then;

  static const _undefined = {};

  TRes call({
    Object? googleSignIn = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$googleSignIn(
        googleSignIn: googleSignIn == _undefined || googleSignIn == null
            ? _instance.googleSignIn
            : (googleSignIn as Mutation$googleSignIn$googleSignIn),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$googleSignIn$googleSignIn<TRes> get googleSignIn {
    final local$googleSignIn = _instance.googleSignIn;
    return CopyWith$Mutation$googleSignIn$googleSignIn(
        local$googleSignIn, (e) => call(googleSignIn: e));
  }
}

class _CopyWithStubImpl$Mutation$googleSignIn<TRes>
    implements CopyWith$Mutation$googleSignIn<TRes> {
  _CopyWithStubImpl$Mutation$googleSignIn(this._res);

  TRes _res;

  call({
    Mutation$googleSignIn$googleSignIn? googleSignIn,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$googleSignIn$googleSignIn<TRes> get googleSignIn =>
      CopyWith$Mutation$googleSignIn$googleSignIn.stub(_res);
}

const documentNodeMutationgoogleSignIn = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'googleSignIn'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'idToken')),
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
        name: NameNode(value: 'googleSignIn'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'idToken'),
            value: VariableNode(name: NameNode(value: 'idToken')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'longLivedToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'code'),
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
Mutation$googleSignIn _parserFn$Mutation$googleSignIn(
        Map<String, dynamic> data) =>
    Mutation$googleSignIn.fromJson(data);
typedef OnMutationCompleted$Mutation$googleSignIn = FutureOr<void> Function(
  dynamic,
  Mutation$googleSignIn?,
);

class Options$Mutation$googleSignIn
    extends graphql.MutationOptions<Mutation$googleSignIn> {
  Options$Mutation$googleSignIn({
    String? operationName,
    required Variables$Mutation$googleSignIn variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$googleSignIn? onCompleted,
    graphql.OnMutationUpdate<Mutation$googleSignIn>? update,
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
                    data == null ? null : _parserFn$Mutation$googleSignIn(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationgoogleSignIn,
          parserFn: _parserFn$Mutation$googleSignIn,
        );

  final OnMutationCompleted$Mutation$googleSignIn? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$googleSignIn
    extends graphql.WatchQueryOptions<Mutation$googleSignIn> {
  WatchOptions$Mutation$googleSignIn({
    String? operationName,
    required Variables$Mutation$googleSignIn variables,
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
          document: documentNodeMutationgoogleSignIn,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$googleSignIn,
        );
}

extension ClientExtension$Mutation$googleSignIn on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$googleSignIn>> mutate$googleSignIn(
          Options$Mutation$googleSignIn options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$googleSignIn> watchMutation$googleSignIn(
          WatchOptions$Mutation$googleSignIn options) =>
      this.watchMutation(options);
}

class Mutation$googleSignIn$googleSignIn {
  Mutation$googleSignIn$googleSignIn({
    this.longLivedToken,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$googleSignIn$googleSignIn.fromJson(
      Map<String, dynamic> json) {
    final l$longLivedToken = json['longLivedToken'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$googleSignIn$googleSignIn(
      longLivedToken: (l$longLivedToken as String?),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$googleSignIn$googleSignIn$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? longLivedToken;

  final List<Mutation$googleSignIn$googleSignIn$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$longLivedToken = longLivedToken;
    _resultData['longLivedToken'] = l$longLivedToken;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$longLivedToken = longLivedToken;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$longLivedToken,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$googleSignIn$googleSignIn) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$longLivedToken = longLivedToken;
    final lOther$longLivedToken = other.longLivedToken;
    if (l$longLivedToken != lOther$longLivedToken) {
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

extension UtilityExtension$Mutation$googleSignIn$googleSignIn
    on Mutation$googleSignIn$googleSignIn {
  CopyWith$Mutation$googleSignIn$googleSignIn<
          Mutation$googleSignIn$googleSignIn>
      get copyWith => CopyWith$Mutation$googleSignIn$googleSignIn(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$googleSignIn$googleSignIn<TRes> {
  factory CopyWith$Mutation$googleSignIn$googleSignIn(
    Mutation$googleSignIn$googleSignIn instance,
    TRes Function(Mutation$googleSignIn$googleSignIn) then,
  ) = _CopyWithImpl$Mutation$googleSignIn$googleSignIn;

  factory CopyWith$Mutation$googleSignIn$googleSignIn.stub(TRes res) =
      _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn;

  TRes call({
    String? longLivedToken,
    List<Mutation$googleSignIn$googleSignIn$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$googleSignIn$googleSignIn$errors> Function(
              Iterable<
                  CopyWith$Mutation$googleSignIn$googleSignIn$errors<
                      Mutation$googleSignIn$googleSignIn$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$googleSignIn$googleSignIn<TRes>
    implements CopyWith$Mutation$googleSignIn$googleSignIn<TRes> {
  _CopyWithImpl$Mutation$googleSignIn$googleSignIn(
    this._instance,
    this._then,
  );

  final Mutation$googleSignIn$googleSignIn _instance;

  final TRes Function(Mutation$googleSignIn$googleSignIn) _then;

  static const _undefined = {};

  TRes call({
    Object? longLivedToken = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$googleSignIn$googleSignIn(
        longLivedToken: longLivedToken == _undefined
            ? _instance.longLivedToken
            : (longLivedToken as String?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$googleSignIn$googleSignIn$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$googleSignIn$googleSignIn$errors> Function(
                  Iterable<
                      CopyWith$Mutation$googleSignIn$googleSignIn$errors<
                          Mutation$googleSignIn$googleSignIn$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$googleSignIn$googleSignIn$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn<TRes>
    implements CopyWith$Mutation$googleSignIn$googleSignIn<TRes> {
  _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn(this._res);

  TRes _res;

  call({
    String? longLivedToken,
    List<Mutation$googleSignIn$googleSignIn$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$googleSignIn$googleSignIn$errors {
  Mutation$googleSignIn$googleSignIn$errors({
    required this.message,
    required this.code,
    required this.$__typename,
  });

  factory Mutation$googleSignIn$googleSignIn$errors.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$googleSignIn$googleSignIn$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$googleSignIn$googleSignIn$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$googleSignIn$googleSignIn$errors
    on Mutation$googleSignIn$googleSignIn$errors {
  CopyWith$Mutation$googleSignIn$googleSignIn$errors<
          Mutation$googleSignIn$googleSignIn$errors>
      get copyWith => CopyWith$Mutation$googleSignIn$googleSignIn$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$googleSignIn$googleSignIn$errors<TRes> {
  factory CopyWith$Mutation$googleSignIn$googleSignIn$errors(
    Mutation$googleSignIn$googleSignIn$errors instance,
    TRes Function(Mutation$googleSignIn$googleSignIn$errors) then,
  ) = _CopyWithImpl$Mutation$googleSignIn$googleSignIn$errors;

  factory CopyWith$Mutation$googleSignIn$googleSignIn$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn$errors;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$googleSignIn$googleSignIn$errors<TRes>
    implements CopyWith$Mutation$googleSignIn$googleSignIn$errors<TRes> {
  _CopyWithImpl$Mutation$googleSignIn$googleSignIn$errors(
    this._instance,
    this._then,
  );

  final Mutation$googleSignIn$googleSignIn$errors _instance;

  final TRes Function(Mutation$googleSignIn$googleSignIn$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$googleSignIn$googleSignIn$errors(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn$errors<TRes>
    implements CopyWith$Mutation$googleSignIn$googleSignIn$errors<TRes> {
  _CopyWithStubImpl$Mutation$googleSignIn$googleSignIn$errors(this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$refreshToken {
  Mutation$refreshToken({
    required this.shortLivedToken,
    required this.$__typename,
  });

  factory Mutation$refreshToken.fromJson(Map<String, dynamic> json) {
    final l$shortLivedToken = json['shortLivedToken'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken(
      shortLivedToken: Mutation$refreshToken$shortLivedToken.fromJson(
          (l$shortLivedToken as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$refreshToken$shortLivedToken shortLivedToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortLivedToken = shortLivedToken;
    _resultData['shortLivedToken'] = l$shortLivedToken.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortLivedToken = shortLivedToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortLivedToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$refreshToken) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortLivedToken = shortLivedToken;
    final lOther$shortLivedToken = other.shortLivedToken;
    if (l$shortLivedToken != lOther$shortLivedToken) {
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

extension UtilityExtension$Mutation$refreshToken on Mutation$refreshToken {
  CopyWith$Mutation$refreshToken<Mutation$refreshToken> get copyWith =>
      CopyWith$Mutation$refreshToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$refreshToken<TRes> {
  factory CopyWith$Mutation$refreshToken(
    Mutation$refreshToken instance,
    TRes Function(Mutation$refreshToken) then,
  ) = _CopyWithImpl$Mutation$refreshToken;

  factory CopyWith$Mutation$refreshToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken;

  TRes call({
    Mutation$refreshToken$shortLivedToken? shortLivedToken,
    String? $__typename,
  });
  CopyWith$Mutation$refreshToken$shortLivedToken<TRes> get shortLivedToken;
}

class _CopyWithImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithImpl$Mutation$refreshToken(
    this._instance,
    this._then,
  );

  final Mutation$refreshToken _instance;

  final TRes Function(Mutation$refreshToken) _then;

  static const _undefined = {};

  TRes call({
    Object? shortLivedToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$refreshToken(
        shortLivedToken:
            shortLivedToken == _undefined || shortLivedToken == null
                ? _instance.shortLivedToken
                : (shortLivedToken as Mutation$refreshToken$shortLivedToken),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$refreshToken$shortLivedToken<TRes> get shortLivedToken {
    final local$shortLivedToken = _instance.shortLivedToken;
    return CopyWith$Mutation$refreshToken$shortLivedToken(
        local$shortLivedToken, (e) => call(shortLivedToken: e));
  }
}

class _CopyWithStubImpl$Mutation$refreshToken<TRes>
    implements CopyWith$Mutation$refreshToken<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken(this._res);

  TRes _res;

  call({
    Mutation$refreshToken$shortLivedToken? shortLivedToken,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$refreshToken$shortLivedToken<TRes> get shortLivedToken =>
      CopyWith$Mutation$refreshToken$shortLivedToken.stub(_res);
}

const documentNodeMutationrefreshToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'refreshToken'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'shortLivedToken'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'shortLivedToken'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'code'),
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
Mutation$refreshToken _parserFn$Mutation$refreshToken(
        Map<String, dynamic> data) =>
    Mutation$refreshToken.fromJson(data);
typedef OnMutationCompleted$Mutation$refreshToken = FutureOr<void> Function(
  dynamic,
  Mutation$refreshToken?,
);

class Options$Mutation$refreshToken
    extends graphql.MutationOptions<Mutation$refreshToken> {
  Options$Mutation$refreshToken({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$refreshToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$refreshToken>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                    data == null ? null : _parserFn$Mutation$refreshToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationrefreshToken,
          parserFn: _parserFn$Mutation$refreshToken,
        );

  final OnMutationCompleted$Mutation$refreshToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$refreshToken
    extends graphql.WatchQueryOptions<Mutation$refreshToken> {
  WatchOptions$Mutation$refreshToken({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationrefreshToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$refreshToken,
        );
}

extension ClientExtension$Mutation$refreshToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$refreshToken>> mutate$refreshToken(
          [Options$Mutation$refreshToken? options]) async =>
      await this.mutate(options ?? Options$Mutation$refreshToken());
  graphql.ObservableQuery<Mutation$refreshToken> watchMutation$refreshToken(
          [WatchOptions$Mutation$refreshToken? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$refreshToken());
}

class Mutation$refreshToken$shortLivedToken {
  Mutation$refreshToken$shortLivedToken({
    this.shortLivedToken,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$refreshToken$shortLivedToken.fromJson(
      Map<String, dynamic> json) {
    final l$shortLivedToken = json['shortLivedToken'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken$shortLivedToken(
      shortLivedToken: (l$shortLivedToken as String?),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$refreshToken$shortLivedToken$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? shortLivedToken;

  final List<Mutation$refreshToken$shortLivedToken$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shortLivedToken = shortLivedToken;
    _resultData['shortLivedToken'] = l$shortLivedToken;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shortLivedToken = shortLivedToken;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortLivedToken,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$refreshToken$shortLivedToken) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortLivedToken = shortLivedToken;
    final lOther$shortLivedToken = other.shortLivedToken;
    if (l$shortLivedToken != lOther$shortLivedToken) {
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

extension UtilityExtension$Mutation$refreshToken$shortLivedToken
    on Mutation$refreshToken$shortLivedToken {
  CopyWith$Mutation$refreshToken$shortLivedToken<
          Mutation$refreshToken$shortLivedToken>
      get copyWith => CopyWith$Mutation$refreshToken$shortLivedToken(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$refreshToken$shortLivedToken<TRes> {
  factory CopyWith$Mutation$refreshToken$shortLivedToken(
    Mutation$refreshToken$shortLivedToken instance,
    TRes Function(Mutation$refreshToken$shortLivedToken) then,
  ) = _CopyWithImpl$Mutation$refreshToken$shortLivedToken;

  factory CopyWith$Mutation$refreshToken$shortLivedToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken;

  TRes call({
    String? shortLivedToken,
    List<Mutation$refreshToken$shortLivedToken$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$refreshToken$shortLivedToken$errors> Function(
              Iterable<
                  CopyWith$Mutation$refreshToken$shortLivedToken$errors<
                      Mutation$refreshToken$shortLivedToken$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$refreshToken$shortLivedToken<TRes>
    implements CopyWith$Mutation$refreshToken$shortLivedToken<TRes> {
  _CopyWithImpl$Mutation$refreshToken$shortLivedToken(
    this._instance,
    this._then,
  );

  final Mutation$refreshToken$shortLivedToken _instance;

  final TRes Function(Mutation$refreshToken$shortLivedToken) _then;

  static const _undefined = {};

  TRes call({
    Object? shortLivedToken = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$refreshToken$shortLivedToken(
        shortLivedToken: shortLivedToken == _undefined
            ? _instance.shortLivedToken
            : (shortLivedToken as String?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$refreshToken$shortLivedToken$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$refreshToken$shortLivedToken$errors> Function(
                  Iterable<
                      CopyWith$Mutation$refreshToken$shortLivedToken$errors<
                          Mutation$refreshToken$shortLivedToken$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$refreshToken$shortLivedToken$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken<TRes>
    implements CopyWith$Mutation$refreshToken$shortLivedToken<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken(this._res);

  TRes _res;

  call({
    String? shortLivedToken,
    List<Mutation$refreshToken$shortLivedToken$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$refreshToken$shortLivedToken$errors {
  Mutation$refreshToken$shortLivedToken$errors({
    required this.message,
    required this.code,
    required this.$__typename,
  });

  factory Mutation$refreshToken$shortLivedToken$errors.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Mutation$refreshToken$shortLivedToken$errors(
      message: (l$message as String),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$refreshToken$shortLivedToken$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Mutation$refreshToken$shortLivedToken$errors
    on Mutation$refreshToken$shortLivedToken$errors {
  CopyWith$Mutation$refreshToken$shortLivedToken$errors<
          Mutation$refreshToken$shortLivedToken$errors>
      get copyWith => CopyWith$Mutation$refreshToken$shortLivedToken$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$refreshToken$shortLivedToken$errors<TRes> {
  factory CopyWith$Mutation$refreshToken$shortLivedToken$errors(
    Mutation$refreshToken$shortLivedToken$errors instance,
    TRes Function(Mutation$refreshToken$shortLivedToken$errors) then,
  ) = _CopyWithImpl$Mutation$refreshToken$shortLivedToken$errors;

  factory CopyWith$Mutation$refreshToken$shortLivedToken$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken$errors;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$refreshToken$shortLivedToken$errors<TRes>
    implements CopyWith$Mutation$refreshToken$shortLivedToken$errors<TRes> {
  _CopyWithImpl$Mutation$refreshToken$shortLivedToken$errors(
    this._instance,
    this._then,
  );

  final Mutation$refreshToken$shortLivedToken$errors _instance;

  final TRes Function(Mutation$refreshToken$shortLivedToken$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$refreshToken$shortLivedToken$errors(
        message: message == _undefined || message == null
            ? _instance.message
            : (message as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken$errors<TRes>
    implements CopyWith$Mutation$refreshToken$shortLivedToken$errors<TRes> {
  _CopyWithStubImpl$Mutation$refreshToken$shortLivedToken$errors(this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}
