import '../../../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$createChild {
  factory Variables$Mutation$createChild({
    required int familyId,
    required Input$ChildCreateInput input,
  }) =>
      Variables$Mutation$createChild._({
        r'familyId': familyId,
        r'input': input,
      });

  Variables$Mutation$createChild._(this._$data);

  factory Variables$Mutation$createChild.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$input = data['input'];
    result$data['input'] =
        Input$ChildCreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createChild._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$ChildCreateInput get input =>
      (_$data['input'] as Input$ChildCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createChild<Variables$Mutation$createChild>
      get copyWith => CopyWith$Variables$Mutation$createChild(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$createChild) ||
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

abstract class CopyWith$Variables$Mutation$createChild<TRes> {
  factory CopyWith$Variables$Mutation$createChild(
    Variables$Mutation$createChild instance,
    TRes Function(Variables$Mutation$createChild) then,
  ) = _CopyWithImpl$Variables$Mutation$createChild;

  factory CopyWith$Variables$Mutation$createChild.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createChild;

  TRes call({
    int? familyId,
    Input$ChildCreateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$createChild<TRes>
    implements CopyWith$Variables$Mutation$createChild<TRes> {
  _CopyWithImpl$Variables$Mutation$createChild(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createChild _instance;

  final TRes Function(Variables$Mutation$createChild) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$createChild._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (input != _undefined && input != null)
          'input': (input as Input$ChildCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createChild<TRes>
    implements CopyWith$Variables$Mutation$createChild<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createChild(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$ChildCreateInput? input,
  }) =>
      _res;
}

class Mutation$createChild {
  Mutation$createChild({
    required this.childCreate,
    required this.$__typename,
  });

  factory Mutation$createChild.fromJson(Map<String, dynamic> json) {
    final l$childCreate = json['childCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$createChild(
      childCreate: Mutation$createChild$childCreate.fromJson(
          (l$childCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createChild$childCreate childCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$childCreate = childCreate;
    _resultData['childCreate'] = l$childCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$childCreate = childCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$childCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createChild) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$childCreate = childCreate;
    final lOther$childCreate = other.childCreate;
    if (l$childCreate != lOther$childCreate) {
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

extension UtilityExtension$Mutation$createChild on Mutation$createChild {
  CopyWith$Mutation$createChild<Mutation$createChild> get copyWith =>
      CopyWith$Mutation$createChild(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createChild<TRes> {
  factory CopyWith$Mutation$createChild(
    Mutation$createChild instance,
    TRes Function(Mutation$createChild) then,
  ) = _CopyWithImpl$Mutation$createChild;

  factory CopyWith$Mutation$createChild.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createChild;

  TRes call({
    Mutation$createChild$childCreate? childCreate,
    String? $__typename,
  });
  CopyWith$Mutation$createChild$childCreate<TRes> get childCreate;
}

class _CopyWithImpl$Mutation$createChild<TRes>
    implements CopyWith$Mutation$createChild<TRes> {
  _CopyWithImpl$Mutation$createChild(
    this._instance,
    this._then,
  );

  final Mutation$createChild _instance;

  final TRes Function(Mutation$createChild) _then;

  static const _undefined = {};

  TRes call({
    Object? childCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createChild(
        childCreate: childCreate == _undefined || childCreate == null
            ? _instance.childCreate
            : (childCreate as Mutation$createChild$childCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$createChild$childCreate<TRes> get childCreate {
    final local$childCreate = _instance.childCreate;
    return CopyWith$Mutation$createChild$childCreate(
        local$childCreate, (e) => call(childCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$createChild<TRes>
    implements CopyWith$Mutation$createChild<TRes> {
  _CopyWithStubImpl$Mutation$createChild(this._res);

  TRes _res;

  call({
    Mutation$createChild$childCreate? childCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$createChild$childCreate<TRes> get childCreate =>
      CopyWith$Mutation$createChild$childCreate.stub(_res);
}

const documentNodeMutationcreateChild = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createChild'),
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
          name: NameNode(value: 'ChildCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'childCreate'),
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
            name: NameNode(value: 'child'),
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
Mutation$createChild _parserFn$Mutation$createChild(
        Map<String, dynamic> data) =>
    Mutation$createChild.fromJson(data);
typedef OnMutationCompleted$Mutation$createChild = FutureOr<void> Function(
  dynamic,
  Mutation$createChild?,
);

class Options$Mutation$createChild
    extends graphql.MutationOptions<Mutation$createChild> {
  Options$Mutation$createChild({
    String? operationName,
    required Variables$Mutation$createChild variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createChild? onCompleted,
    graphql.OnMutationUpdate<Mutation$createChild>? update,
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
                    data == null ? null : _parserFn$Mutation$createChild(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateChild,
          parserFn: _parserFn$Mutation$createChild,
        );

  final OnMutationCompleted$Mutation$createChild? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createChild
    extends graphql.WatchQueryOptions<Mutation$createChild> {
  WatchOptions$Mutation$createChild({
    String? operationName,
    required Variables$Mutation$createChild variables,
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
          document: documentNodeMutationcreateChild,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createChild,
        );
}

extension ClientExtension$Mutation$createChild on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createChild>> mutate$createChild(
          Options$Mutation$createChild options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createChild> watchMutation$createChild(
          WatchOptions$Mutation$createChild options) =>
      this.watchMutation(options);
}

class Mutation$createChild$childCreate {
  Mutation$createChild$childCreate({
    this.child,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$createChild$childCreate.fromJson(Map<String, dynamic> json) {
    final l$child = json['child'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$createChild$childCreate(
      child: l$child == null
          ? null
          : Mutation$createChild$childCreate$child.fromJson(
              (l$child as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$createChild$childCreate$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createChild$childCreate$child? child;

  final List<Mutation$createChild$childCreate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$child = child;
    _resultData['child'] = l$child?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$child,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$createChild$childCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (l$child != lOther$child) {
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

extension UtilityExtension$Mutation$createChild$childCreate
    on Mutation$createChild$childCreate {
  CopyWith$Mutation$createChild$childCreate<Mutation$createChild$childCreate>
      get copyWith => CopyWith$Mutation$createChild$childCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createChild$childCreate<TRes> {
  factory CopyWith$Mutation$createChild$childCreate(
    Mutation$createChild$childCreate instance,
    TRes Function(Mutation$createChild$childCreate) then,
  ) = _CopyWithImpl$Mutation$createChild$childCreate;

  factory CopyWith$Mutation$createChild$childCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createChild$childCreate;

  TRes call({
    Mutation$createChild$childCreate$child? child,
    List<Mutation$createChild$childCreate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Mutation$createChild$childCreate$child<TRes> get child;
  TRes errors(
      Iterable<Mutation$createChild$childCreate$errors> Function(
              Iterable<
                  CopyWith$Mutation$createChild$childCreate$errors<
                      Mutation$createChild$childCreate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$createChild$childCreate<TRes>
    implements CopyWith$Mutation$createChild$childCreate<TRes> {
  _CopyWithImpl$Mutation$createChild$childCreate(
    this._instance,
    this._then,
  );

  final Mutation$createChild$childCreate _instance;

  final TRes Function(Mutation$createChild$childCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? child = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createChild$childCreate(
        child: child == _undefined
            ? _instance.child
            : (child as Mutation$createChild$childCreate$child?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$createChild$childCreate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$createChild$childCreate$child<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith$Mutation$createChild$childCreate$child.stub(_then(_instance))
        : CopyWith$Mutation$createChild$childCreate$child(
            local$child, (e) => call(child: e));
  }

  TRes errors(
          Iterable<Mutation$createChild$childCreate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$createChild$childCreate$errors<
                          Mutation$createChild$childCreate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$createChild$childCreate$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$createChild$childCreate<TRes>
    implements CopyWith$Mutation$createChild$childCreate<TRes> {
  _CopyWithStubImpl$Mutation$createChild$childCreate(this._res);

  TRes _res;

  call({
    Mutation$createChild$childCreate$child? child,
    List<Mutation$createChild$childCreate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$createChild$childCreate$child<TRes> get child =>
      CopyWith$Mutation$createChild$childCreate$child.stub(_res);
  errors(_fn) => _res;
}

class Mutation$createChild$childCreate$child {
  Mutation$createChild$childCreate$child({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Mutation$createChild$childCreate$child.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$createChild$childCreate$child(
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
    if (!(other is Mutation$createChild$childCreate$child) ||
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

extension UtilityExtension$Mutation$createChild$childCreate$child
    on Mutation$createChild$childCreate$child {
  CopyWith$Mutation$createChild$childCreate$child<
          Mutation$createChild$childCreate$child>
      get copyWith => CopyWith$Mutation$createChild$childCreate$child(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createChild$childCreate$child<TRes> {
  factory CopyWith$Mutation$createChild$childCreate$child(
    Mutation$createChild$childCreate$child instance,
    TRes Function(Mutation$createChild$childCreate$child) then,
  ) = _CopyWithImpl$Mutation$createChild$childCreate$child;

  factory CopyWith$Mutation$createChild$childCreate$child.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createChild$childCreate$child;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createChild$childCreate$child<TRes>
    implements CopyWith$Mutation$createChild$childCreate$child<TRes> {
  _CopyWithImpl$Mutation$createChild$childCreate$child(
    this._instance,
    this._then,
  );

  final Mutation$createChild$childCreate$child _instance;

  final TRes Function(Mutation$createChild$childCreate$child) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createChild$childCreate$child(
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

class _CopyWithStubImpl$Mutation$createChild$childCreate$child<TRes>
    implements CopyWith$Mutation$createChild$childCreate$child<TRes> {
  _CopyWithStubImpl$Mutation$createChild$childCreate$child(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createChild$childCreate$errors {
  Mutation$createChild$childCreate$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$createChild$childCreate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$createChild$childCreate$errors(
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
    if (!(other is Mutation$createChild$childCreate$errors) ||
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

extension UtilityExtension$Mutation$createChild$childCreate$errors
    on Mutation$createChild$childCreate$errors {
  CopyWith$Mutation$createChild$childCreate$errors<
          Mutation$createChild$childCreate$errors>
      get copyWith => CopyWith$Mutation$createChild$childCreate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createChild$childCreate$errors<TRes> {
  factory CopyWith$Mutation$createChild$childCreate$errors(
    Mutation$createChild$childCreate$errors instance,
    TRes Function(Mutation$createChild$childCreate$errors) then,
  ) = _CopyWithImpl$Mutation$createChild$childCreate$errors;

  factory CopyWith$Mutation$createChild$childCreate$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createChild$childCreate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createChild$childCreate$errors<TRes>
    implements CopyWith$Mutation$createChild$childCreate$errors<TRes> {
  _CopyWithImpl$Mutation$createChild$childCreate$errors(
    this._instance,
    this._then,
  );

  final Mutation$createChild$childCreate$errors _instance;

  final TRes Function(Mutation$createChild$childCreate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createChild$childCreate$errors(
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

class _CopyWithStubImpl$Mutation$createChild$childCreate$errors<TRes>
    implements CopyWith$Mutation$createChild$childCreate$errors<TRes> {
  _CopyWithStubImpl$Mutation$createChild$childCreate$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateChild {
  factory Variables$Mutation$updateChild({
    required int familyId,
    required Input$ChildUpdateInput input,
  }) =>
      Variables$Mutation$updateChild._({
        r'familyId': familyId,
        r'input': input,
      });

  Variables$Mutation$updateChild._(this._$data);

  factory Variables$Mutation$updateChild.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$input = data['input'];
    result$data['input'] =
        Input$ChildUpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$updateChild._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$ChildUpdateInput get input =>
      (_$data['input'] as Input$ChildUpdateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$updateChild<Variables$Mutation$updateChild>
      get copyWith => CopyWith$Variables$Mutation$updateChild(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateChild) ||
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

abstract class CopyWith$Variables$Mutation$updateChild<TRes> {
  factory CopyWith$Variables$Mutation$updateChild(
    Variables$Mutation$updateChild instance,
    TRes Function(Variables$Mutation$updateChild) then,
  ) = _CopyWithImpl$Variables$Mutation$updateChild;

  factory CopyWith$Variables$Mutation$updateChild.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateChild;

  TRes call({
    int? familyId,
    Input$ChildUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$updateChild<TRes>
    implements CopyWith$Variables$Mutation$updateChild<TRes> {
  _CopyWithImpl$Variables$Mutation$updateChild(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateChild _instance;

  final TRes Function(Variables$Mutation$updateChild) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$updateChild._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (input != _undefined && input != null)
          'input': (input as Input$ChildUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateChild<TRes>
    implements CopyWith$Variables$Mutation$updateChild<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateChild(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$ChildUpdateInput? input,
  }) =>
      _res;
}

class Mutation$updateChild {
  Mutation$updateChild({
    required this.childUpdate,
    required this.$__typename,
  });

  factory Mutation$updateChild.fromJson(Map<String, dynamic> json) {
    final l$childUpdate = json['childUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$updateChild(
      childUpdate: Mutation$updateChild$childUpdate.fromJson(
          (l$childUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateChild$childUpdate childUpdate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$childUpdate = childUpdate;
    _resultData['childUpdate'] = l$childUpdate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$childUpdate = childUpdate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$childUpdate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateChild) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$childUpdate = childUpdate;
    final lOther$childUpdate = other.childUpdate;
    if (l$childUpdate != lOther$childUpdate) {
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

extension UtilityExtension$Mutation$updateChild on Mutation$updateChild {
  CopyWith$Mutation$updateChild<Mutation$updateChild> get copyWith =>
      CopyWith$Mutation$updateChild(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$updateChild<TRes> {
  factory CopyWith$Mutation$updateChild(
    Mutation$updateChild instance,
    TRes Function(Mutation$updateChild) then,
  ) = _CopyWithImpl$Mutation$updateChild;

  factory CopyWith$Mutation$updateChild.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateChild;

  TRes call({
    Mutation$updateChild$childUpdate? childUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$updateChild$childUpdate<TRes> get childUpdate;
}

class _CopyWithImpl$Mutation$updateChild<TRes>
    implements CopyWith$Mutation$updateChild<TRes> {
  _CopyWithImpl$Mutation$updateChild(
    this._instance,
    this._then,
  );

  final Mutation$updateChild _instance;

  final TRes Function(Mutation$updateChild) _then;

  static const _undefined = {};

  TRes call({
    Object? childUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateChild(
        childUpdate: childUpdate == _undefined || childUpdate == null
            ? _instance.childUpdate
            : (childUpdate as Mutation$updateChild$childUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updateChild$childUpdate<TRes> get childUpdate {
    final local$childUpdate = _instance.childUpdate;
    return CopyWith$Mutation$updateChild$childUpdate(
        local$childUpdate, (e) => call(childUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$updateChild<TRes>
    implements CopyWith$Mutation$updateChild<TRes> {
  _CopyWithStubImpl$Mutation$updateChild(this._res);

  TRes _res;

  call({
    Mutation$updateChild$childUpdate? childUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updateChild$childUpdate<TRes> get childUpdate =>
      CopyWith$Mutation$updateChild$childUpdate.stub(_res);
}

const documentNodeMutationupdateChild = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateChild'),
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
          name: NameNode(value: 'ChildUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'childUpdate'),
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
            name: NameNode(value: 'child'),
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
Mutation$updateChild _parserFn$Mutation$updateChild(
        Map<String, dynamic> data) =>
    Mutation$updateChild.fromJson(data);
typedef OnMutationCompleted$Mutation$updateChild = FutureOr<void> Function(
  dynamic,
  Mutation$updateChild?,
);

class Options$Mutation$updateChild
    extends graphql.MutationOptions<Mutation$updateChild> {
  Options$Mutation$updateChild({
    String? operationName,
    required Variables$Mutation$updateChild variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateChild? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateChild>? update,
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
                    data == null ? null : _parserFn$Mutation$updateChild(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateChild,
          parserFn: _parserFn$Mutation$updateChild,
        );

  final OnMutationCompleted$Mutation$updateChild? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateChild
    extends graphql.WatchQueryOptions<Mutation$updateChild> {
  WatchOptions$Mutation$updateChild({
    String? operationName,
    required Variables$Mutation$updateChild variables,
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
          document: documentNodeMutationupdateChild,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateChild,
        );
}

extension ClientExtension$Mutation$updateChild on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateChild>> mutate$updateChild(
          Options$Mutation$updateChild options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$updateChild> watchMutation$updateChild(
          WatchOptions$Mutation$updateChild options) =>
      this.watchMutation(options);
}

class Mutation$updateChild$childUpdate {
  Mutation$updateChild$childUpdate({
    this.child,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$updateChild$childUpdate.fromJson(Map<String, dynamic> json) {
    final l$child = json['child'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$updateChild$childUpdate(
      child: l$child == null
          ? null
          : Mutation$updateChild$childUpdate$child.fromJson(
              (l$child as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$updateChild$childUpdate$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateChild$childUpdate$child? child;

  final List<Mutation$updateChild$childUpdate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$child = child;
    _resultData['child'] = l$child?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$child = child;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$child,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateChild$childUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$child = child;
    final lOther$child = other.child;
    if (l$child != lOther$child) {
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

extension UtilityExtension$Mutation$updateChild$childUpdate
    on Mutation$updateChild$childUpdate {
  CopyWith$Mutation$updateChild$childUpdate<Mutation$updateChild$childUpdate>
      get copyWith => CopyWith$Mutation$updateChild$childUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateChild$childUpdate<TRes> {
  factory CopyWith$Mutation$updateChild$childUpdate(
    Mutation$updateChild$childUpdate instance,
    TRes Function(Mutation$updateChild$childUpdate) then,
  ) = _CopyWithImpl$Mutation$updateChild$childUpdate;

  factory CopyWith$Mutation$updateChild$childUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateChild$childUpdate;

  TRes call({
    Mutation$updateChild$childUpdate$child? child,
    List<Mutation$updateChild$childUpdate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Mutation$updateChild$childUpdate$child<TRes> get child;
  TRes errors(
      Iterable<Mutation$updateChild$childUpdate$errors> Function(
              Iterable<
                  CopyWith$Mutation$updateChild$childUpdate$errors<
                      Mutation$updateChild$childUpdate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$updateChild$childUpdate<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate<TRes> {
  _CopyWithImpl$Mutation$updateChild$childUpdate(
    this._instance,
    this._then,
  );

  final Mutation$updateChild$childUpdate _instance;

  final TRes Function(Mutation$updateChild$childUpdate) _then;

  static const _undefined = {};

  TRes call({
    Object? child = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateChild$childUpdate(
        child: child == _undefined
            ? _instance.child
            : (child as Mutation$updateChild$childUpdate$child?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$updateChild$childUpdate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updateChild$childUpdate$child<TRes> get child {
    final local$child = _instance.child;
    return local$child == null
        ? CopyWith$Mutation$updateChild$childUpdate$child.stub(_then(_instance))
        : CopyWith$Mutation$updateChild$childUpdate$child(
            local$child, (e) => call(child: e));
  }

  TRes errors(
          Iterable<Mutation$updateChild$childUpdate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$updateChild$childUpdate$errors<
                          Mutation$updateChild$childUpdate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$updateChild$childUpdate$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$updateChild$childUpdate<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate<TRes> {
  _CopyWithStubImpl$Mutation$updateChild$childUpdate(this._res);

  TRes _res;

  call({
    Mutation$updateChild$childUpdate$child? child,
    List<Mutation$updateChild$childUpdate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updateChild$childUpdate$child<TRes> get child =>
      CopyWith$Mutation$updateChild$childUpdate$child.stub(_res);
  errors(_fn) => _res;
}

class Mutation$updateChild$childUpdate$child {
  Mutation$updateChild$childUpdate$child({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Mutation$updateChild$childUpdate$child.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Mutation$updateChild$childUpdate$child(
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
    if (!(other is Mutation$updateChild$childUpdate$child) ||
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

extension UtilityExtension$Mutation$updateChild$childUpdate$child
    on Mutation$updateChild$childUpdate$child {
  CopyWith$Mutation$updateChild$childUpdate$child<
          Mutation$updateChild$childUpdate$child>
      get copyWith => CopyWith$Mutation$updateChild$childUpdate$child(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateChild$childUpdate$child<TRes> {
  factory CopyWith$Mutation$updateChild$childUpdate$child(
    Mutation$updateChild$childUpdate$child instance,
    TRes Function(Mutation$updateChild$childUpdate$child) then,
  ) = _CopyWithImpl$Mutation$updateChild$childUpdate$child;

  factory CopyWith$Mutation$updateChild$childUpdate$child.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateChild$childUpdate$child;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateChild$childUpdate$child<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate$child<TRes> {
  _CopyWithImpl$Mutation$updateChild$childUpdate$child(
    this._instance,
    this._then,
  );

  final Mutation$updateChild$childUpdate$child _instance;

  final TRes Function(Mutation$updateChild$childUpdate$child) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateChild$childUpdate$child(
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

class _CopyWithStubImpl$Mutation$updateChild$childUpdate$child<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate$child<TRes> {
  _CopyWithStubImpl$Mutation$updateChild$childUpdate$child(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$updateChild$childUpdate$errors {
  Mutation$updateChild$childUpdate$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$updateChild$childUpdate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$updateChild$childUpdate$errors(
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
    if (!(other is Mutation$updateChild$childUpdate$errors) ||
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

extension UtilityExtension$Mutation$updateChild$childUpdate$errors
    on Mutation$updateChild$childUpdate$errors {
  CopyWith$Mutation$updateChild$childUpdate$errors<
          Mutation$updateChild$childUpdate$errors>
      get copyWith => CopyWith$Mutation$updateChild$childUpdate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateChild$childUpdate$errors<TRes> {
  factory CopyWith$Mutation$updateChild$childUpdate$errors(
    Mutation$updateChild$childUpdate$errors instance,
    TRes Function(Mutation$updateChild$childUpdate$errors) then,
  ) = _CopyWithImpl$Mutation$updateChild$childUpdate$errors;

  factory CopyWith$Mutation$updateChild$childUpdate$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateChild$childUpdate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateChild$childUpdate$errors<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate$errors<TRes> {
  _CopyWithImpl$Mutation$updateChild$childUpdate$errors(
    this._instance,
    this._then,
  );

  final Mutation$updateChild$childUpdate$errors _instance;

  final TRes Function(Mutation$updateChild$childUpdate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateChild$childUpdate$errors(
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

class _CopyWithStubImpl$Mutation$updateChild$childUpdate$errors<TRes>
    implements CopyWith$Mutation$updateChild$childUpdate$errors<TRes> {
  _CopyWithStubImpl$Mutation$updateChild$childUpdate$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
