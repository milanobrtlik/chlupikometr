import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$familyCreate {
  factory Variables$Mutation$familyCreate(
          {required Input$FamilyCreateInput input}) =>
      Variables$Mutation$familyCreate._({
        r'input': input,
      });

  Variables$Mutation$familyCreate._(this._$data);

  factory Variables$Mutation$familyCreate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$FamilyCreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$familyCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$FamilyCreateInput get input =>
      (_$data['input'] as Input$FamilyCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$familyCreate<Variables$Mutation$familyCreate>
      get copyWith => CopyWith$Variables$Mutation$familyCreate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$familyCreate) ||
        runtimeType != other.runtimeType) {
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
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$familyCreate<TRes> {
  factory CopyWith$Variables$Mutation$familyCreate(
    Variables$Mutation$familyCreate instance,
    TRes Function(Variables$Mutation$familyCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$familyCreate;

  factory CopyWith$Variables$Mutation$familyCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$familyCreate;

  TRes call({Input$FamilyCreateInput? input});
}

class _CopyWithImpl$Variables$Mutation$familyCreate<TRes>
    implements CopyWith$Variables$Mutation$familyCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$familyCreate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$familyCreate _instance;

  final TRes Function(Variables$Mutation$familyCreate) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$familyCreate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$FamilyCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$familyCreate<TRes>
    implements CopyWith$Variables$Mutation$familyCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$familyCreate(this._res);

  TRes _res;

  call({Input$FamilyCreateInput? input}) => _res;
}

class Mutation$familyCreate {
  Mutation$familyCreate({
    required this.familyCreate,
    required this.$__typename,
  });

  factory Mutation$familyCreate.fromJson(Map<String, dynamic> json) {
    final l$familyCreate = json['familyCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$familyCreate(
      familyCreate: Mutation$familyCreate$familyCreate.fromJson(
          (l$familyCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$familyCreate$familyCreate familyCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyCreate = familyCreate;
    _resultData['familyCreate'] = l$familyCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyCreate = familyCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$familyCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$familyCreate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyCreate = familyCreate;
    final lOther$familyCreate = other.familyCreate;
    if (l$familyCreate != lOther$familyCreate) {
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

extension UtilityExtension$Mutation$familyCreate on Mutation$familyCreate {
  CopyWith$Mutation$familyCreate<Mutation$familyCreate> get copyWith =>
      CopyWith$Mutation$familyCreate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$familyCreate<TRes> {
  factory CopyWith$Mutation$familyCreate(
    Mutation$familyCreate instance,
    TRes Function(Mutation$familyCreate) then,
  ) = _CopyWithImpl$Mutation$familyCreate;

  factory CopyWith$Mutation$familyCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$familyCreate;

  TRes call({
    Mutation$familyCreate$familyCreate? familyCreate,
    String? $__typename,
  });
  CopyWith$Mutation$familyCreate$familyCreate<TRes> get familyCreate;
}

class _CopyWithImpl$Mutation$familyCreate<TRes>
    implements CopyWith$Mutation$familyCreate<TRes> {
  _CopyWithImpl$Mutation$familyCreate(
    this._instance,
    this._then,
  );

  final Mutation$familyCreate _instance;

  final TRes Function(Mutation$familyCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? familyCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$familyCreate(
        familyCreate: familyCreate == _undefined || familyCreate == null
            ? _instance.familyCreate
            : (familyCreate as Mutation$familyCreate$familyCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$familyCreate$familyCreate<TRes> get familyCreate {
    final local$familyCreate = _instance.familyCreate;
    return CopyWith$Mutation$familyCreate$familyCreate(
        local$familyCreate, (e) => call(familyCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$familyCreate<TRes>
    implements CopyWith$Mutation$familyCreate<TRes> {
  _CopyWithStubImpl$Mutation$familyCreate(this._res);

  TRes _res;

  call({
    Mutation$familyCreate$familyCreate? familyCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$familyCreate$familyCreate<TRes> get familyCreate =>
      CopyWith$Mutation$familyCreate$familyCreate.stub(_res);
}

const documentNodeMutationfamilyCreate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'familyCreate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'FamilyCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'familyCreate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'family'),
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
                name: NameNode(value: 'name'),
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
Mutation$familyCreate _parserFn$Mutation$familyCreate(
        Map<String, dynamic> data) =>
    Mutation$familyCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$familyCreate = FutureOr<void> Function(
  dynamic,
  Mutation$familyCreate?,
);

class Options$Mutation$familyCreate
    extends graphql.MutationOptions<Mutation$familyCreate> {
  Options$Mutation$familyCreate({
    String? operationName,
    required Variables$Mutation$familyCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$familyCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$familyCreate>? update,
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
                    data == null ? null : _parserFn$Mutation$familyCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationfamilyCreate,
          parserFn: _parserFn$Mutation$familyCreate,
        );

  final OnMutationCompleted$Mutation$familyCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$familyCreate
    extends graphql.WatchQueryOptions<Mutation$familyCreate> {
  WatchOptions$Mutation$familyCreate({
    String? operationName,
    required Variables$Mutation$familyCreate variables,
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
          document: documentNodeMutationfamilyCreate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$familyCreate,
        );
}

extension ClientExtension$Mutation$familyCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$familyCreate>> mutate$familyCreate(
          Options$Mutation$familyCreate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$familyCreate> watchMutation$familyCreate(
          WatchOptions$Mutation$familyCreate options) =>
      this.watchMutation(options);
}

class Mutation$familyCreate$familyCreate {
  Mutation$familyCreate$familyCreate({
    this.family,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$familyCreate$familyCreate.fromJson(
      Map<String, dynamic> json) {
    final l$family = json['family'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$familyCreate$familyCreate(
      family: l$family == null
          ? null
          : Mutation$familyCreate$familyCreate$family.fromJson(
              (l$family as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$familyCreate$familyCreate$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$familyCreate$familyCreate$family? family;

  final List<Mutation$familyCreate$familyCreate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$family = family;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$family,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$familyCreate$familyCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
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

extension UtilityExtension$Mutation$familyCreate$familyCreate
    on Mutation$familyCreate$familyCreate {
  CopyWith$Mutation$familyCreate$familyCreate<
          Mutation$familyCreate$familyCreate>
      get copyWith => CopyWith$Mutation$familyCreate$familyCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$familyCreate$familyCreate<TRes> {
  factory CopyWith$Mutation$familyCreate$familyCreate(
    Mutation$familyCreate$familyCreate instance,
    TRes Function(Mutation$familyCreate$familyCreate) then,
  ) = _CopyWithImpl$Mutation$familyCreate$familyCreate;

  factory CopyWith$Mutation$familyCreate$familyCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$familyCreate$familyCreate;

  TRes call({
    Mutation$familyCreate$familyCreate$family? family,
    List<Mutation$familyCreate$familyCreate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Mutation$familyCreate$familyCreate$family<TRes> get family;
  TRes errors(
      Iterable<Mutation$familyCreate$familyCreate$errors> Function(
              Iterable<
                  CopyWith$Mutation$familyCreate$familyCreate$errors<
                      Mutation$familyCreate$familyCreate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$familyCreate$familyCreate<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate<TRes> {
  _CopyWithImpl$Mutation$familyCreate$familyCreate(
    this._instance,
    this._then,
  );

  final Mutation$familyCreate$familyCreate _instance;

  final TRes Function(Mutation$familyCreate$familyCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? family = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$familyCreate$familyCreate(
        family: family == _undefined
            ? _instance.family
            : (family as Mutation$familyCreate$familyCreate$family?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$familyCreate$familyCreate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$familyCreate$familyCreate$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Mutation$familyCreate$familyCreate$family.stub(
            _then(_instance))
        : CopyWith$Mutation$familyCreate$familyCreate$family(
            local$family, (e) => call(family: e));
  }

  TRes errors(
          Iterable<Mutation$familyCreate$familyCreate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$familyCreate$familyCreate$errors<
                          Mutation$familyCreate$familyCreate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$familyCreate$familyCreate$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$familyCreate$familyCreate<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate<TRes> {
  _CopyWithStubImpl$Mutation$familyCreate$familyCreate(this._res);

  TRes _res;

  call({
    Mutation$familyCreate$familyCreate$family? family,
    List<Mutation$familyCreate$familyCreate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$familyCreate$familyCreate$family<TRes> get family =>
      CopyWith$Mutation$familyCreate$familyCreate$family.stub(_res);
  errors(_fn) => _res;
}

class Mutation$familyCreate$familyCreate$family {
  Mutation$familyCreate$familyCreate$family({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$familyCreate$familyCreate$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$familyCreate$familyCreate$family(
      id: (l$id as int),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$familyCreate$familyCreate$family) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$familyCreate$familyCreate$family
    on Mutation$familyCreate$familyCreate$family {
  CopyWith$Mutation$familyCreate$familyCreate$family<
          Mutation$familyCreate$familyCreate$family>
      get copyWith => CopyWith$Mutation$familyCreate$familyCreate$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$familyCreate$familyCreate$family<TRes> {
  factory CopyWith$Mutation$familyCreate$familyCreate$family(
    Mutation$familyCreate$familyCreate$family instance,
    TRes Function(Mutation$familyCreate$familyCreate$family) then,
  ) = _CopyWithImpl$Mutation$familyCreate$familyCreate$family;

  factory CopyWith$Mutation$familyCreate$familyCreate$family.stub(TRes res) =
      _CopyWithStubImpl$Mutation$familyCreate$familyCreate$family;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$familyCreate$familyCreate$family<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate$family<TRes> {
  _CopyWithImpl$Mutation$familyCreate$familyCreate$family(
    this._instance,
    this._then,
  );

  final Mutation$familyCreate$familyCreate$family _instance;

  final TRes Function(Mutation$familyCreate$familyCreate$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$familyCreate$familyCreate$family(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$familyCreate$familyCreate$family<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate$family<TRes> {
  _CopyWithStubImpl$Mutation$familyCreate$familyCreate$family(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$familyCreate$familyCreate$errors {
  Mutation$familyCreate$familyCreate$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$familyCreate$familyCreate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$familyCreate$familyCreate$errors(
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
    if (!(other is Mutation$familyCreate$familyCreate$errors) ||
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

extension UtilityExtension$Mutation$familyCreate$familyCreate$errors
    on Mutation$familyCreate$familyCreate$errors {
  CopyWith$Mutation$familyCreate$familyCreate$errors<
          Mutation$familyCreate$familyCreate$errors>
      get copyWith => CopyWith$Mutation$familyCreate$familyCreate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$familyCreate$familyCreate$errors<TRes> {
  factory CopyWith$Mutation$familyCreate$familyCreate$errors(
    Mutation$familyCreate$familyCreate$errors instance,
    TRes Function(Mutation$familyCreate$familyCreate$errors) then,
  ) = _CopyWithImpl$Mutation$familyCreate$familyCreate$errors;

  factory CopyWith$Mutation$familyCreate$familyCreate$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$familyCreate$familyCreate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$familyCreate$familyCreate$errors<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate$errors<TRes> {
  _CopyWithImpl$Mutation$familyCreate$familyCreate$errors(
    this._instance,
    this._then,
  );

  final Mutation$familyCreate$familyCreate$errors _instance;

  final TRes Function(Mutation$familyCreate$familyCreate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$familyCreate$familyCreate$errors(
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

class _CopyWithStubImpl$Mutation$familyCreate$familyCreate$errors<TRes>
    implements CopyWith$Mutation$familyCreate$familyCreate$errors<TRes> {
  _CopyWithStubImpl$Mutation$familyCreate$familyCreate$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
