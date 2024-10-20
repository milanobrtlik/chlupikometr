import '../../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$homepage {
  factory Variables$Query$homepage({required int familyId}) =>
      Variables$Query$homepage._({
        r'familyId': familyId,
      });

  Variables$Query$homepage._(this._$data);

  factory Variables$Query$homepage.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    return Variables$Query$homepage._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    return result$data;
  }

  CopyWith$Variables$Query$homepage<Variables$Query$homepage> get copyWith =>
      CopyWith$Variables$Query$homepage(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$homepage) ||
        runtimeType != other.runtimeType) {
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
    final l$familyId = familyId;
    return Object.hashAll([l$familyId]);
  }
}

abstract class CopyWith$Variables$Query$homepage<TRes> {
  factory CopyWith$Variables$Query$homepage(
    Variables$Query$homepage instance,
    TRes Function(Variables$Query$homepage) then,
  ) = _CopyWithImpl$Variables$Query$homepage;

  factory CopyWith$Variables$Query$homepage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$homepage;

  TRes call({int? familyId});
}

class _CopyWithImpl$Variables$Query$homepage<TRes>
    implements CopyWith$Variables$Query$homepage<TRes> {
  _CopyWithImpl$Variables$Query$homepage(
    this._instance,
    this._then,
  );

  final Variables$Query$homepage _instance;

  final TRes Function(Variables$Query$homepage) _then;

  static const _undefined = {};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables$Query$homepage._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$homepage<TRes>
    implements CopyWith$Variables$Query$homepage<TRes> {
  _CopyWithStubImpl$Variables$Query$homepage(this._res);

  TRes _res;

  call({int? familyId}) => _res;
}

class Query$homepage {
  Query$homepage({
    required this.me,
    required this.children,
    required this.inventoryList,
    required this.$__typename,
  });

  factory Query$homepage.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$children = json['children'];
    final l$inventoryList = json['inventoryList'];
    final l$$__typename = json['__typename'];
    return Query$homepage(
      me: Query$homepage$me.fromJson((l$me as Map<String, dynamic>)),
      children: (l$children as List<dynamic>)
          .map((e) =>
              Query$homepage$children.fromJson((e as Map<String, dynamic>)))
          .toList(),
      inventoryList: (l$inventoryList as List<dynamic>)
          .map((e) => Query$homepage$inventoryList.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$homepage$me me;

  final List<Query$homepage$children> children;

  final List<Query$homepage$inventoryList> inventoryList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$inventoryList = inventoryList;
    _resultData['inventoryList'] =
        l$inventoryList.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$children = children;
    final l$inventoryList = inventoryList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      Object.hashAll(l$children.map((v) => v)),
      Object.hashAll(l$inventoryList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$homepage) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
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
    final l$inventoryList = inventoryList;
    final lOther$inventoryList = other.inventoryList;
    if (l$inventoryList.length != lOther$inventoryList.length) {
      return false;
    }
    for (int i = 0; i < l$inventoryList.length; i++) {
      final l$inventoryList$entry = l$inventoryList[i];
      final lOther$inventoryList$entry = lOther$inventoryList[i];
      if (l$inventoryList$entry != lOther$inventoryList$entry) {
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

extension UtilityExtension$Query$homepage on Query$homepage {
  CopyWith$Query$homepage<Query$homepage> get copyWith =>
      CopyWith$Query$homepage(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$homepage<TRes> {
  factory CopyWith$Query$homepage(
    Query$homepage instance,
    TRes Function(Query$homepage) then,
  ) = _CopyWithImpl$Query$homepage;

  factory CopyWith$Query$homepage.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage;

  TRes call({
    Query$homepage$me? me,
    List<Query$homepage$children>? children,
    List<Query$homepage$inventoryList>? inventoryList,
    String? $__typename,
  });
  CopyWith$Query$homepage$me<TRes> get me;
  TRes children(
      Iterable<Query$homepage$children> Function(
              Iterable<
                  CopyWith$Query$homepage$children<Query$homepage$children>>)
          _fn);
  TRes inventoryList(
      Iterable<Query$homepage$inventoryList> Function(
              Iterable<
                  CopyWith$Query$homepage$inventoryList<
                      Query$homepage$inventoryList>>)
          _fn);
}

class _CopyWithImpl$Query$homepage<TRes>
    implements CopyWith$Query$homepage<TRes> {
  _CopyWithImpl$Query$homepage(
    this._instance,
    this._then,
  );

  final Query$homepage _instance;

  final TRes Function(Query$homepage) _then;

  static const _undefined = {};

  TRes call({
    Object? me = _undefined,
    Object? children = _undefined,
    Object? inventoryList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Query$homepage$me),
        children: children == _undefined || children == null
            ? _instance.children
            : (children as List<Query$homepage$children>),
        inventoryList: inventoryList == _undefined || inventoryList == null
            ? _instance.inventoryList
            : (inventoryList as List<Query$homepage$inventoryList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$homepage$me<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Query$homepage$me(local$me, (e) => call(me: e));
  }

  TRes children(
          Iterable<Query$homepage$children> Function(
                  Iterable<
                      CopyWith$Query$homepage$children<
                          Query$homepage$children>>)
              _fn) =>
      call(
          children: _fn(
              _instance.children.map((e) => CopyWith$Query$homepage$children(
                    e,
                    (i) => i,
                  ))).toList());
  TRes inventoryList(
          Iterable<Query$homepage$inventoryList> Function(
                  Iterable<
                      CopyWith$Query$homepage$inventoryList<
                          Query$homepage$inventoryList>>)
              _fn) =>
      call(
          inventoryList: _fn(_instance.inventoryList
              .map((e) => CopyWith$Query$homepage$inventoryList(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$homepage<TRes>
    implements CopyWith$Query$homepage<TRes> {
  _CopyWithStubImpl$Query$homepage(this._res);

  TRes _res;

  call({
    Query$homepage$me? me,
    List<Query$homepage$children>? children,
    List<Query$homepage$inventoryList>? inventoryList,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$homepage$me<TRes> get me =>
      CopyWith$Query$homepage$me.stub(_res);
  children(_fn) => _res;
  inventoryList(_fn) => _res;
}

const documentNodeQueryhomepage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'homepage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'familyId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'me'),
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
            name: NameNode(value: 'familyUser'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'kind'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
            name: NameNode(value: 'points'),
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
        name: NameNode(value: 'inventoryList'),
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
            name: NameNode(value: 'title'),
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
Query$homepage _parserFn$Query$homepage(Map<String, dynamic> data) =>
    Query$homepage.fromJson(data);

class Options$Query$homepage extends graphql.QueryOptions<Query$homepage> {
  Options$Query$homepage({
    String? operationName,
    required Variables$Query$homepage variables,
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
          document: documentNodeQueryhomepage,
          parserFn: _parserFn$Query$homepage,
        );
}

class WatchOptions$Query$homepage
    extends graphql.WatchQueryOptions<Query$homepage> {
  WatchOptions$Query$homepage({
    String? operationName,
    required Variables$Query$homepage variables,
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
          document: documentNodeQueryhomepage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$homepage,
        );
}

class FetchMoreOptions$Query$homepage extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$homepage({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$homepage variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryhomepage,
        );
}

extension ClientExtension$Query$homepage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$homepage>> query$homepage(
          Options$Query$homepage options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$homepage> watchQuery$homepage(
          WatchOptions$Query$homepage options) =>
      this.watchQuery(options);
  void writeQuery$homepage({
    required Query$homepage data,
    required Variables$Query$homepage variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryhomepage),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$homepage? readQuery$homepage({
    required Variables$Query$homepage variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryhomepage),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$homepage.fromJson(result);
  }
}

class Query$homepage$me {
  Query$homepage$me({
    required this.id,
    required this.name,
    required this.pictureUrl,
    this.familyUser,
    required this.$__typename,
  });

  factory Query$homepage$me.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$familyUser = json['familyUser'];
    final l$$__typename = json['__typename'];
    return Query$homepage$me(
      id: (l$id as int),
      name: (l$name as String),
      pictureUrl: (l$pictureUrl as String),
      familyUser: (l$familyUser as List<dynamic>?)
          ?.map((e) => Query$homepage$me$familyUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String pictureUrl;

  final List<Query$homepage$me$familyUser>? familyUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
    final l$familyUser = familyUser;
    _resultData['familyUser'] = l$familyUser?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pictureUrl = pictureUrl;
    final l$familyUser = familyUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$pictureUrl,
      l$familyUser == null ? null : Object.hashAll(l$familyUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$homepage$me) || runtimeType != other.runtimeType) {
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
    final l$familyUser = familyUser;
    final lOther$familyUser = other.familyUser;
    if (l$familyUser != null && lOther$familyUser != null) {
      if (l$familyUser.length != lOther$familyUser.length) {
        return false;
      }
      for (int i = 0; i < l$familyUser.length; i++) {
        final l$familyUser$entry = l$familyUser[i];
        final lOther$familyUser$entry = lOther$familyUser[i];
        if (l$familyUser$entry != lOther$familyUser$entry) {
          return false;
        }
      }
    } else if (l$familyUser != lOther$familyUser) {
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

extension UtilityExtension$Query$homepage$me on Query$homepage$me {
  CopyWith$Query$homepage$me<Query$homepage$me> get copyWith =>
      CopyWith$Query$homepage$me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$homepage$me<TRes> {
  factory CopyWith$Query$homepage$me(
    Query$homepage$me instance,
    TRes Function(Query$homepage$me) then,
  ) = _CopyWithImpl$Query$homepage$me;

  factory CopyWith$Query$homepage$me.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage$me;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    List<Query$homepage$me$familyUser>? familyUser,
    String? $__typename,
  });
  TRes familyUser(
      Iterable<Query$homepage$me$familyUser>? Function(
              Iterable<
                  CopyWith$Query$homepage$me$familyUser<
                      Query$homepage$me$familyUser>>?)
          _fn);
}

class _CopyWithImpl$Query$homepage$me<TRes>
    implements CopyWith$Query$homepage$me<TRes> {
  _CopyWithImpl$Query$homepage$me(
    this._instance,
    this._then,
  );

  final Query$homepage$me _instance;

  final TRes Function(Query$homepage$me) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? familyUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage$me(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pictureUrl: pictureUrl == _undefined || pictureUrl == null
            ? _instance.pictureUrl
            : (pictureUrl as String),
        familyUser: familyUser == _undefined
            ? _instance.familyUser
            : (familyUser as List<Query$homepage$me$familyUser>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes familyUser(
          Iterable<Query$homepage$me$familyUser>? Function(
                  Iterable<
                      CopyWith$Query$homepage$me$familyUser<
                          Query$homepage$me$familyUser>>?)
              _fn) =>
      call(
          familyUser: _fn(_instance.familyUser
              ?.map((e) => CopyWith$Query$homepage$me$familyUser(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$homepage$me<TRes>
    implements CopyWith$Query$homepage$me<TRes> {
  _CopyWithStubImpl$Query$homepage$me(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    List<Query$homepage$me$familyUser>? familyUser,
    String? $__typename,
  }) =>
      _res;
  familyUser(_fn) => _res;
}

class Query$homepage$me$familyUser {
  Query$homepage$me$familyUser({
    required this.kind,
    this.family,
    required this.$__typename,
  });

  factory Query$homepage$me$familyUser.fromJson(Map<String, dynamic> json) {
    final l$kind = json['kind'];
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query$homepage$me$familyUser(
      kind: fromJson$Enum$FamilyUserKind((l$kind as String)),
      family: l$family == null
          ? null
          : Query$homepage$me$familyUser$family.fromJson(
              (l$family as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$FamilyUserKind kind;

  final Query$homepage$me$familyUser$family? family;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$kind = kind;
    _resultData['kind'] = toJson$Enum$FamilyUserKind(l$kind);
    final l$family = family;
    _resultData['family'] = l$family?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$kind = kind;
    final l$family = family;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$kind,
      l$family,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$homepage$me$familyUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    final l$family = family;
    final lOther$family = other.family;
    if (l$family != lOther$family) {
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

extension UtilityExtension$Query$homepage$me$familyUser
    on Query$homepage$me$familyUser {
  CopyWith$Query$homepage$me$familyUser<Query$homepage$me$familyUser>
      get copyWith => CopyWith$Query$homepage$me$familyUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$homepage$me$familyUser<TRes> {
  factory CopyWith$Query$homepage$me$familyUser(
    Query$homepage$me$familyUser instance,
    TRes Function(Query$homepage$me$familyUser) then,
  ) = _CopyWithImpl$Query$homepage$me$familyUser;

  factory CopyWith$Query$homepage$me$familyUser.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage$me$familyUser;

  TRes call({
    Enum$FamilyUserKind? kind,
    Query$homepage$me$familyUser$family? family,
    String? $__typename,
  });
  CopyWith$Query$homepage$me$familyUser$family<TRes> get family;
}

class _CopyWithImpl$Query$homepage$me$familyUser<TRes>
    implements CopyWith$Query$homepage$me$familyUser<TRes> {
  _CopyWithImpl$Query$homepage$me$familyUser(
    this._instance,
    this._then,
  );

  final Query$homepage$me$familyUser _instance;

  final TRes Function(Query$homepage$me$familyUser) _then;

  static const _undefined = {};

  TRes call({
    Object? kind = _undefined,
    Object? family = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage$me$familyUser(
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$FamilyUserKind),
        family: family == _undefined
            ? _instance.family
            : (family as Query$homepage$me$familyUser$family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$homepage$me$familyUser$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Query$homepage$me$familyUser$family.stub(_then(_instance))
        : CopyWith$Query$homepage$me$familyUser$family(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Query$homepage$me$familyUser<TRes>
    implements CopyWith$Query$homepage$me$familyUser<TRes> {
  _CopyWithStubImpl$Query$homepage$me$familyUser(this._res);

  TRes _res;

  call({
    Enum$FamilyUserKind? kind,
    Query$homepage$me$familyUser$family? family,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$homepage$me$familyUser$family<TRes> get family =>
      CopyWith$Query$homepage$me$familyUser$family.stub(_res);
}

class Query$homepage$me$familyUser$family {
  Query$homepage$me$familyUser$family({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$homepage$me$familyUser$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$homepage$me$familyUser$family(
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
    if (!(other is Query$homepage$me$familyUser$family) ||
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

extension UtilityExtension$Query$homepage$me$familyUser$family
    on Query$homepage$me$familyUser$family {
  CopyWith$Query$homepage$me$familyUser$family<
          Query$homepage$me$familyUser$family>
      get copyWith => CopyWith$Query$homepage$me$familyUser$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$homepage$me$familyUser$family<TRes> {
  factory CopyWith$Query$homepage$me$familyUser$family(
    Query$homepage$me$familyUser$family instance,
    TRes Function(Query$homepage$me$familyUser$family) then,
  ) = _CopyWithImpl$Query$homepage$me$familyUser$family;

  factory CopyWith$Query$homepage$me$familyUser$family.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage$me$familyUser$family;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$homepage$me$familyUser$family<TRes>
    implements CopyWith$Query$homepage$me$familyUser$family<TRes> {
  _CopyWithImpl$Query$homepage$me$familyUser$family(
    this._instance,
    this._then,
  );

  final Query$homepage$me$familyUser$family _instance;

  final TRes Function(Query$homepage$me$familyUser$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage$me$familyUser$family(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$homepage$me$familyUser$family<TRes>
    implements CopyWith$Query$homepage$me$familyUser$family<TRes> {
  _CopyWithStubImpl$Query$homepage$me$familyUser$family(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$homepage$children {
  Query$homepage$children({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.points,
    required this.$__typename,
  });

  factory Query$homepage$children.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$points = json['points'];
    final l$$__typename = json['__typename'];
    return Query$homepage$children(
      id: (l$id as int),
      name: (l$name as String),
      pictureUrl: (l$pictureUrl as String?),
      points: (l$points as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final String? pictureUrl;

  final int points;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
    final l$points = points;
    _resultData['points'] = l$points;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pictureUrl = pictureUrl;
    final l$points = points;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$pictureUrl,
      l$points,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$homepage$children) ||
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
    final l$points = points;
    final lOther$points = other.points;
    if (l$points != lOther$points) {
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

extension UtilityExtension$Query$homepage$children on Query$homepage$children {
  CopyWith$Query$homepage$children<Query$homepage$children> get copyWith =>
      CopyWith$Query$homepage$children(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$homepage$children<TRes> {
  factory CopyWith$Query$homepage$children(
    Query$homepage$children instance,
    TRes Function(Query$homepage$children) then,
  ) = _CopyWithImpl$Query$homepage$children;

  factory CopyWith$Query$homepage$children.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage$children;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    int? points,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$homepage$children<TRes>
    implements CopyWith$Query$homepage$children<TRes> {
  _CopyWithImpl$Query$homepage$children(
    this._instance,
    this._then,
  );

  final Query$homepage$children _instance;

  final TRes Function(Query$homepage$children) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? points = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage$children(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pictureUrl: pictureUrl == _undefined
            ? _instance.pictureUrl
            : (pictureUrl as String?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$homepage$children<TRes>
    implements CopyWith$Query$homepage$children<TRes> {
  _CopyWithStubImpl$Query$homepage$children(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    int? points,
    String? $__typename,
  }) =>
      _res;
}

class Query$homepage$inventoryList {
  Query$homepage$inventoryList({
    required this.id,
    required this.title,
    required this.$__typename,
  });

  factory Query$homepage$inventoryList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$homepage$inventoryList(
      id: (l$id as int),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$homepage$inventoryList) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$homepage$inventoryList
    on Query$homepage$inventoryList {
  CopyWith$Query$homepage$inventoryList<Query$homepage$inventoryList>
      get copyWith => CopyWith$Query$homepage$inventoryList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$homepage$inventoryList<TRes> {
  factory CopyWith$Query$homepage$inventoryList(
    Query$homepage$inventoryList instance,
    TRes Function(Query$homepage$inventoryList) then,
  ) = _CopyWithImpl$Query$homepage$inventoryList;

  factory CopyWith$Query$homepage$inventoryList.stub(TRes res) =
      _CopyWithStubImpl$Query$homepage$inventoryList;

  TRes call({
    int? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$homepage$inventoryList<TRes>
    implements CopyWith$Query$homepage$inventoryList<TRes> {
  _CopyWithImpl$Query$homepage$inventoryList(
    this._instance,
    this._then,
  );

  final Query$homepage$inventoryList _instance;

  final TRes Function(Query$homepage$inventoryList) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$homepage$inventoryList(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$homepage$inventoryList<TRes>
    implements CopyWith$Query$homepage$inventoryList<TRes> {
  _CopyWithStubImpl$Query$homepage$inventoryList(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Query$families {
  Query$families({
    required this.families,
    required this.$__typename,
  });

  factory Query$families.fromJson(Map<String, dynamic> json) {
    final l$families = json['families'];
    final l$$__typename = json['__typename'];
    return Query$families(
      families: (l$families as List<dynamic>)
          .map((e) =>
              Query$families$families.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$families$families> families;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$families = families;
    _resultData['families'] = l$families.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$families = families;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$families.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$families) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$families = families;
    final lOther$families = other.families;
    if (l$families.length != lOther$families.length) {
      return false;
    }
    for (int i = 0; i < l$families.length; i++) {
      final l$families$entry = l$families[i];
      final lOther$families$entry = lOther$families[i];
      if (l$families$entry != lOther$families$entry) {
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

extension UtilityExtension$Query$families on Query$families {
  CopyWith$Query$families<Query$families> get copyWith =>
      CopyWith$Query$families(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$families<TRes> {
  factory CopyWith$Query$families(
    Query$families instance,
    TRes Function(Query$families) then,
  ) = _CopyWithImpl$Query$families;

  factory CopyWith$Query$families.stub(TRes res) =
      _CopyWithStubImpl$Query$families;

  TRes call({
    List<Query$families$families>? families,
    String? $__typename,
  });
  TRes families(
      Iterable<Query$families$families> Function(
              Iterable<
                  CopyWith$Query$families$families<Query$families$families>>)
          _fn);
}

class _CopyWithImpl$Query$families<TRes>
    implements CopyWith$Query$families<TRes> {
  _CopyWithImpl$Query$families(
    this._instance,
    this._then,
  );

  final Query$families _instance;

  final TRes Function(Query$families) _then;

  static const _undefined = {};

  TRes call({
    Object? families = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$families(
        families: families == _undefined || families == null
            ? _instance.families
            : (families as List<Query$families$families>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes families(
          Iterable<Query$families$families> Function(
                  Iterable<
                      CopyWith$Query$families$families<
                          Query$families$families>>)
              _fn) =>
      call(
          families: _fn(
              _instance.families.map((e) => CopyWith$Query$families$families(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$families<TRes>
    implements CopyWith$Query$families<TRes> {
  _CopyWithStubImpl$Query$families(this._res);

  TRes _res;

  call({
    List<Query$families$families>? families,
    String? $__typename,
  }) =>
      _res;
  families(_fn) => _res;
}

const documentNodeQueryfamilies = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'families'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'families'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$families _parserFn$Query$families(Map<String, dynamic> data) =>
    Query$families.fromJson(data);

class Options$Query$families extends graphql.QueryOptions<Query$families> {
  Options$Query$families({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryfamilies,
          parserFn: _parserFn$Query$families,
        );
}

class WatchOptions$Query$families
    extends graphql.WatchQueryOptions<Query$families> {
  WatchOptions$Query$families({
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
          document: documentNodeQueryfamilies,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$families,
        );
}

class FetchMoreOptions$Query$families extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$families({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryfamilies,
        );
}

extension ClientExtension$Query$families on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$families>> query$families(
          [Options$Query$families? options]) async =>
      await this.query(options ?? Options$Query$families());
  graphql.ObservableQuery<Query$families> watchQuery$families(
          [WatchOptions$Query$families? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$families());
  void writeQuery$families({
    required Query$families data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryfamilies)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$families? readQuery$families({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryfamilies)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$families.fromJson(result);
  }
}

class Query$families$families {
  Query$families$families({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$families$families.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$families$families(
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
    if (!(other is Query$families$families) ||
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

extension UtilityExtension$Query$families$families on Query$families$families {
  CopyWith$Query$families$families<Query$families$families> get copyWith =>
      CopyWith$Query$families$families(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$families$families<TRes> {
  factory CopyWith$Query$families$families(
    Query$families$families instance,
    TRes Function(Query$families$families) then,
  ) = _CopyWithImpl$Query$families$families;

  factory CopyWith$Query$families$families.stub(TRes res) =
      _CopyWithStubImpl$Query$families$families;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$families$families<TRes>
    implements CopyWith$Query$families$families<TRes> {
  _CopyWithImpl$Query$families$families(
    this._instance,
    this._then,
  );

  final Query$families$families _instance;

  final TRes Function(Query$families$families) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$families$families(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$families$families<TRes>
    implements CopyWith$Query$families$families<TRes> {
  _CopyWithStubImpl$Query$families$families(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}
