import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$manageFamilyMembers {
  factory Variables$Query$manageFamilyMembers({required int familyId}) =>
      Variables$Query$manageFamilyMembers._({
        r'familyId': familyId,
      });

  Variables$Query$manageFamilyMembers._(this._$data);

  factory Variables$Query$manageFamilyMembers.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    return Variables$Query$manageFamilyMembers._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    return result$data;
  }

  CopyWith$Variables$Query$manageFamilyMembers<
          Variables$Query$manageFamilyMembers>
      get copyWith => CopyWith$Variables$Query$manageFamilyMembers(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$manageFamilyMembers) ||
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

abstract class CopyWith$Variables$Query$manageFamilyMembers<TRes> {
  factory CopyWith$Variables$Query$manageFamilyMembers(
    Variables$Query$manageFamilyMembers instance,
    TRes Function(Variables$Query$manageFamilyMembers) then,
  ) = _CopyWithImpl$Variables$Query$manageFamilyMembers;

  factory CopyWith$Variables$Query$manageFamilyMembers.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$manageFamilyMembers;

  TRes call({int? familyId});
}

class _CopyWithImpl$Variables$Query$manageFamilyMembers<TRes>
    implements CopyWith$Variables$Query$manageFamilyMembers<TRes> {
  _CopyWithImpl$Variables$Query$manageFamilyMembers(
    this._instance,
    this._then,
  );

  final Variables$Query$manageFamilyMembers _instance;

  final TRes Function(Variables$Query$manageFamilyMembers) _then;

  static const _undefined = {};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables$Query$manageFamilyMembers._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$manageFamilyMembers<TRes>
    implements CopyWith$Variables$Query$manageFamilyMembers<TRes> {
  _CopyWithStubImpl$Variables$Query$manageFamilyMembers(this._res);

  TRes _res;

  call({int? familyId}) => _res;
}

class Query$manageFamilyMembers {
  Query$manageFamilyMembers({
    required this.me,
    required this.parents,
    required this.babysitters,
    required this.children,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers.fromJson(Map<String, dynamic> json) {
    final l$me = json['me'];
    final l$parents = json['parents'];
    final l$babysitters = json['babysitters'];
    final l$children = json['children'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers(
      me: Query$manageFamilyMembers$me.fromJson((l$me as Map<String, dynamic>)),
      parents: (l$parents as List<dynamic>)
          .map((e) => Query$manageFamilyMembers$parents.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      babysitters: (l$babysitters as List<dynamic>)
          .map((e) => Query$manageFamilyMembers$babysitters.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      children: (l$children as List<dynamic>)
          .map((e) => Query$manageFamilyMembers$children.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$manageFamilyMembers$me me;

  final List<Query$manageFamilyMembers$parents> parents;

  final List<Query$manageFamilyMembers$babysitters> babysitters;

  final List<Query$manageFamilyMembers$children> children;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$me = me;
    _resultData['me'] = l$me.toJson();
    final l$parents = parents;
    _resultData['parents'] = l$parents.map((e) => e.toJson()).toList();
    final l$babysitters = babysitters;
    _resultData['babysitters'] = l$babysitters.map((e) => e.toJson()).toList();
    final l$children = children;
    _resultData['children'] = l$children.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$me = me;
    final l$parents = parents;
    final l$babysitters = babysitters;
    final l$children = children;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$me,
      Object.hashAll(l$parents.map((v) => v)),
      Object.hashAll(l$babysitters.map((v) => v)),
      Object.hashAll(l$children.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$manageFamilyMembers) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$me = me;
    final lOther$me = other.me;
    if (l$me != lOther$me) {
      return false;
    }
    final l$parents = parents;
    final lOther$parents = other.parents;
    if (l$parents.length != lOther$parents.length) {
      return false;
    }
    for (int i = 0; i < l$parents.length; i++) {
      final l$parents$entry = l$parents[i];
      final lOther$parents$entry = lOther$parents[i];
      if (l$parents$entry != lOther$parents$entry) {
        return false;
      }
    }
    final l$babysitters = babysitters;
    final lOther$babysitters = other.babysitters;
    if (l$babysitters.length != lOther$babysitters.length) {
      return false;
    }
    for (int i = 0; i < l$babysitters.length; i++) {
      final l$babysitters$entry = l$babysitters[i];
      final lOther$babysitters$entry = lOther$babysitters[i];
      if (l$babysitters$entry != lOther$babysitters$entry) {
        return false;
      }
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

extension UtilityExtension$Query$manageFamilyMembers
    on Query$manageFamilyMembers {
  CopyWith$Query$manageFamilyMembers<Query$manageFamilyMembers> get copyWith =>
      CopyWith$Query$manageFamilyMembers(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$manageFamilyMembers<TRes> {
  factory CopyWith$Query$manageFamilyMembers(
    Query$manageFamilyMembers instance,
    TRes Function(Query$manageFamilyMembers) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers;

  factory CopyWith$Query$manageFamilyMembers.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers;

  TRes call({
    Query$manageFamilyMembers$me? me,
    List<Query$manageFamilyMembers$parents>? parents,
    List<Query$manageFamilyMembers$babysitters>? babysitters,
    List<Query$manageFamilyMembers$children>? children,
    String? $__typename,
  });
  CopyWith$Query$manageFamilyMembers$me<TRes> get me;
  TRes parents(
      Iterable<Query$manageFamilyMembers$parents> Function(
              Iterable<
                  CopyWith$Query$manageFamilyMembers$parents<
                      Query$manageFamilyMembers$parents>>)
          _fn);
  TRes babysitters(
      Iterable<Query$manageFamilyMembers$babysitters> Function(
              Iterable<
                  CopyWith$Query$manageFamilyMembers$babysitters<
                      Query$manageFamilyMembers$babysitters>>)
          _fn);
  TRes children(
      Iterable<Query$manageFamilyMembers$children> Function(
              Iterable<
                  CopyWith$Query$manageFamilyMembers$children<
                      Query$manageFamilyMembers$children>>)
          _fn);
}

class _CopyWithImpl$Query$manageFamilyMembers<TRes>
    implements CopyWith$Query$manageFamilyMembers<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers _instance;

  final TRes Function(Query$manageFamilyMembers) _then;

  static const _undefined = {};

  TRes call({
    Object? me = _undefined,
    Object? parents = _undefined,
    Object? babysitters = _undefined,
    Object? children = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers(
        me: me == _undefined || me == null
            ? _instance.me
            : (me as Query$manageFamilyMembers$me),
        parents: parents == _undefined || parents == null
            ? _instance.parents
            : (parents as List<Query$manageFamilyMembers$parents>),
        babysitters: babysitters == _undefined || babysitters == null
            ? _instance.babysitters
            : (babysitters as List<Query$manageFamilyMembers$babysitters>),
        children: children == _undefined || children == null
            ? _instance.children
            : (children as List<Query$manageFamilyMembers$children>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$manageFamilyMembers$me<TRes> get me {
    final local$me = _instance.me;
    return CopyWith$Query$manageFamilyMembers$me(local$me, (e) => call(me: e));
  }

  TRes parents(
          Iterable<Query$manageFamilyMembers$parents> Function(
                  Iterable<
                      CopyWith$Query$manageFamilyMembers$parents<
                          Query$manageFamilyMembers$parents>>)
              _fn) =>
      call(
          parents: _fn(_instance.parents
              .map((e) => CopyWith$Query$manageFamilyMembers$parents(
                    e,
                    (i) => i,
                  ))).toList());
  TRes babysitters(
          Iterable<Query$manageFamilyMembers$babysitters> Function(
                  Iterable<
                      CopyWith$Query$manageFamilyMembers$babysitters<
                          Query$manageFamilyMembers$babysitters>>)
              _fn) =>
      call(
          babysitters: _fn(_instance.babysitters
              .map((e) => CopyWith$Query$manageFamilyMembers$babysitters(
                    e,
                    (i) => i,
                  ))).toList());
  TRes children(
          Iterable<Query$manageFamilyMembers$children> Function(
                  Iterable<
                      CopyWith$Query$manageFamilyMembers$children<
                          Query$manageFamilyMembers$children>>)
              _fn) =>
      call(
          children: _fn(_instance.children
              .map((e) => CopyWith$Query$manageFamilyMembers$children(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$manageFamilyMembers<TRes>
    implements CopyWith$Query$manageFamilyMembers<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers(this._res);

  TRes _res;

  call({
    Query$manageFamilyMembers$me? me,
    List<Query$manageFamilyMembers$parents>? parents,
    List<Query$manageFamilyMembers$babysitters>? babysitters,
    List<Query$manageFamilyMembers$children>? children,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$manageFamilyMembers$me<TRes> get me =>
      CopyWith$Query$manageFamilyMembers$me.stub(_res);
  parents(_fn) => _res;
  babysitters(_fn) => _res;
  children(_fn) => _res;
}

const documentNodeQuerymanageFamilyMembers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'manageFamilyMembers'),
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
        name: NameNode(value: 'parents'),
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
        name: NameNode(value: 'babysitters'),
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
Query$manageFamilyMembers _parserFn$Query$manageFamilyMembers(
        Map<String, dynamic> data) =>
    Query$manageFamilyMembers.fromJson(data);

class Options$Query$manageFamilyMembers
    extends graphql.QueryOptions<Query$manageFamilyMembers> {
  Options$Query$manageFamilyMembers({
    String? operationName,
    required Variables$Query$manageFamilyMembers variables,
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
          document: documentNodeQuerymanageFamilyMembers,
          parserFn: _parserFn$Query$manageFamilyMembers,
        );
}

class WatchOptions$Query$manageFamilyMembers
    extends graphql.WatchQueryOptions<Query$manageFamilyMembers> {
  WatchOptions$Query$manageFamilyMembers({
    String? operationName,
    required Variables$Query$manageFamilyMembers variables,
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
          document: documentNodeQuerymanageFamilyMembers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$manageFamilyMembers,
        );
}

class FetchMoreOptions$Query$manageFamilyMembers
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$manageFamilyMembers({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$manageFamilyMembers variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerymanageFamilyMembers,
        );
}

extension ClientExtension$Query$manageFamilyMembers on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$manageFamilyMembers>>
      query$manageFamilyMembers(
              Options$Query$manageFamilyMembers options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$manageFamilyMembers>
      watchQuery$manageFamilyMembers(
              WatchOptions$Query$manageFamilyMembers options) =>
          this.watchQuery(options);
  void writeQuery$manageFamilyMembers({
    required Query$manageFamilyMembers data,
    required Variables$Query$manageFamilyMembers variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerymanageFamilyMembers),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$manageFamilyMembers? readQuery$manageFamilyMembers({
    required Variables$Query$manageFamilyMembers variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerymanageFamilyMembers),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$manageFamilyMembers.fromJson(result);
  }
}

class Query$manageFamilyMembers$me {
  Query$manageFamilyMembers$me({
    required this.id,
    this.familyUser,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$me.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$familyUser = json['familyUser'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$me(
      id: (l$id as int),
      familyUser: (l$familyUser as List<dynamic>?)
          ?.map((e) => Query$manageFamilyMembers$me$familyUser.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final List<Query$manageFamilyMembers$me$familyUser>? familyUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$familyUser = familyUser;
    _resultData['familyUser'] = l$familyUser?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$familyUser = familyUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$familyUser == null ? null : Object.hashAll(l$familyUser.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$manageFamilyMembers$me) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$manageFamilyMembers$me
    on Query$manageFamilyMembers$me {
  CopyWith$Query$manageFamilyMembers$me<Query$manageFamilyMembers$me>
      get copyWith => CopyWith$Query$manageFamilyMembers$me(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$me<TRes> {
  factory CopyWith$Query$manageFamilyMembers$me(
    Query$manageFamilyMembers$me instance,
    TRes Function(Query$manageFamilyMembers$me) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$me;

  factory CopyWith$Query$manageFamilyMembers$me.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$me;

  TRes call({
    int? id,
    List<Query$manageFamilyMembers$me$familyUser>? familyUser,
    String? $__typename,
  });
  TRes familyUser(
      Iterable<Query$manageFamilyMembers$me$familyUser>? Function(
              Iterable<
                  CopyWith$Query$manageFamilyMembers$me$familyUser<
                      Query$manageFamilyMembers$me$familyUser>>?)
          _fn);
}

class _CopyWithImpl$Query$manageFamilyMembers$me<TRes>
    implements CopyWith$Query$manageFamilyMembers$me<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$me(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$me _instance;

  final TRes Function(Query$manageFamilyMembers$me) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? familyUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$me(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        familyUser: familyUser == _undefined
            ? _instance.familyUser
            : (familyUser as List<Query$manageFamilyMembers$me$familyUser>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes familyUser(
          Iterable<Query$manageFamilyMembers$me$familyUser>? Function(
                  Iterable<
                      CopyWith$Query$manageFamilyMembers$me$familyUser<
                          Query$manageFamilyMembers$me$familyUser>>?)
              _fn) =>
      call(
          familyUser: _fn(_instance.familyUser
              ?.map((e) => CopyWith$Query$manageFamilyMembers$me$familyUser(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$manageFamilyMembers$me<TRes>
    implements CopyWith$Query$manageFamilyMembers$me<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$me(this._res);

  TRes _res;

  call({
    int? id,
    List<Query$manageFamilyMembers$me$familyUser>? familyUser,
    String? $__typename,
  }) =>
      _res;
  familyUser(_fn) => _res;
}

class Query$manageFamilyMembers$me$familyUser {
  Query$manageFamilyMembers$me$familyUser({
    required this.kind,
    this.family,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$me$familyUser.fromJson(
      Map<String, dynamic> json) {
    final l$kind = json['kind'];
    final l$family = json['family'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$me$familyUser(
      kind: fromJson$Enum$FamilyUserKind((l$kind as String)),
      family: l$family == null
          ? null
          : Query$manageFamilyMembers$me$familyUser$family.fromJson(
              (l$family as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$FamilyUserKind kind;

  final Query$manageFamilyMembers$me$familyUser$family? family;

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
    if (!(other is Query$manageFamilyMembers$me$familyUser) ||
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

extension UtilityExtension$Query$manageFamilyMembers$me$familyUser
    on Query$manageFamilyMembers$me$familyUser {
  CopyWith$Query$manageFamilyMembers$me$familyUser<
          Query$manageFamilyMembers$me$familyUser>
      get copyWith => CopyWith$Query$manageFamilyMembers$me$familyUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$me$familyUser<TRes> {
  factory CopyWith$Query$manageFamilyMembers$me$familyUser(
    Query$manageFamilyMembers$me$familyUser instance,
    TRes Function(Query$manageFamilyMembers$me$familyUser) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$me$familyUser;

  factory CopyWith$Query$manageFamilyMembers$me$familyUser.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser;

  TRes call({
    Enum$FamilyUserKind? kind,
    Query$manageFamilyMembers$me$familyUser$family? family,
    String? $__typename,
  });
  CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> get family;
}

class _CopyWithImpl$Query$manageFamilyMembers$me$familyUser<TRes>
    implements CopyWith$Query$manageFamilyMembers$me$familyUser<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$me$familyUser(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$me$familyUser _instance;

  final TRes Function(Query$manageFamilyMembers$me$familyUser) _then;

  static const _undefined = {};

  TRes call({
    Object? kind = _undefined,
    Object? family = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$me$familyUser(
        kind: kind == _undefined || kind == null
            ? _instance.kind
            : (kind as Enum$FamilyUserKind),
        family: family == _undefined
            ? _instance.family
            : (family as Query$manageFamilyMembers$me$familyUser$family?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Query$manageFamilyMembers$me$familyUser$family.stub(
            _then(_instance))
        : CopyWith$Query$manageFamilyMembers$me$familyUser$family(
            local$family, (e) => call(family: e));
  }
}

class _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser<TRes>
    implements CopyWith$Query$manageFamilyMembers$me$familyUser<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser(this._res);

  TRes _res;

  call({
    Enum$FamilyUserKind? kind,
    Query$manageFamilyMembers$me$familyUser$family? family,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> get family =>
      CopyWith$Query$manageFamilyMembers$me$familyUser$family.stub(_res);
}

class Query$manageFamilyMembers$me$familyUser$family {
  Query$manageFamilyMembers$me$familyUser$family({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$me$familyUser$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$me$familyUser$family(
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
    if (!(other is Query$manageFamilyMembers$me$familyUser$family) ||
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

extension UtilityExtension$Query$manageFamilyMembers$me$familyUser$family
    on Query$manageFamilyMembers$me$familyUser$family {
  CopyWith$Query$manageFamilyMembers$me$familyUser$family<
          Query$manageFamilyMembers$me$familyUser$family>
      get copyWith => CopyWith$Query$manageFamilyMembers$me$familyUser$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> {
  factory CopyWith$Query$manageFamilyMembers$me$familyUser$family(
    Query$manageFamilyMembers$me$familyUser$family instance,
    TRes Function(Query$manageFamilyMembers$me$familyUser$family) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$me$familyUser$family;

  factory CopyWith$Query$manageFamilyMembers$me$familyUser$family.stub(
          TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser$family;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$manageFamilyMembers$me$familyUser$family<TRes>
    implements CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$me$familyUser$family(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$me$familyUser$family _instance;

  final TRes Function(Query$manageFamilyMembers$me$familyUser$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$me$familyUser$family(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser$family<TRes>
    implements CopyWith$Query$manageFamilyMembers$me$familyUser$family<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$me$familyUser$family(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$manageFamilyMembers$parents {
  Query$manageFamilyMembers$parents({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$parents.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$parents(
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
    if (!(other is Query$manageFamilyMembers$parents) ||
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

extension UtilityExtension$Query$manageFamilyMembers$parents
    on Query$manageFamilyMembers$parents {
  CopyWith$Query$manageFamilyMembers$parents<Query$manageFamilyMembers$parents>
      get copyWith => CopyWith$Query$manageFamilyMembers$parents(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$parents<TRes> {
  factory CopyWith$Query$manageFamilyMembers$parents(
    Query$manageFamilyMembers$parents instance,
    TRes Function(Query$manageFamilyMembers$parents) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$parents;

  factory CopyWith$Query$manageFamilyMembers$parents.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$parents;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$manageFamilyMembers$parents<TRes>
    implements CopyWith$Query$manageFamilyMembers$parents<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$parents(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$parents _instance;

  final TRes Function(Query$manageFamilyMembers$parents) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$parents(
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

class _CopyWithStubImpl$Query$manageFamilyMembers$parents<TRes>
    implements CopyWith$Query$manageFamilyMembers$parents<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$parents(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$manageFamilyMembers$babysitters {
  Query$manageFamilyMembers$babysitters({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$babysitters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$babysitters(
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
    if (!(other is Query$manageFamilyMembers$babysitters) ||
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

extension UtilityExtension$Query$manageFamilyMembers$babysitters
    on Query$manageFamilyMembers$babysitters {
  CopyWith$Query$manageFamilyMembers$babysitters<
          Query$manageFamilyMembers$babysitters>
      get copyWith => CopyWith$Query$manageFamilyMembers$babysitters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$babysitters<TRes> {
  factory CopyWith$Query$manageFamilyMembers$babysitters(
    Query$manageFamilyMembers$babysitters instance,
    TRes Function(Query$manageFamilyMembers$babysitters) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$babysitters;

  factory CopyWith$Query$manageFamilyMembers$babysitters.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$babysitters;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$manageFamilyMembers$babysitters<TRes>
    implements CopyWith$Query$manageFamilyMembers$babysitters<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$babysitters(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$babysitters _instance;

  final TRes Function(Query$manageFamilyMembers$babysitters) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$babysitters(
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

class _CopyWithStubImpl$Query$manageFamilyMembers$babysitters<TRes>
    implements CopyWith$Query$manageFamilyMembers$babysitters<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$babysitters(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Query$manageFamilyMembers$children {
  Query$manageFamilyMembers$children({
    required this.id,
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$manageFamilyMembers$children.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$manageFamilyMembers$children(
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
    if (!(other is Query$manageFamilyMembers$children) ||
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

extension UtilityExtension$Query$manageFamilyMembers$children
    on Query$manageFamilyMembers$children {
  CopyWith$Query$manageFamilyMembers$children<
          Query$manageFamilyMembers$children>
      get copyWith => CopyWith$Query$manageFamilyMembers$children(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$manageFamilyMembers$children<TRes> {
  factory CopyWith$Query$manageFamilyMembers$children(
    Query$manageFamilyMembers$children instance,
    TRes Function(Query$manageFamilyMembers$children) then,
  ) = _CopyWithImpl$Query$manageFamilyMembers$children;

  factory CopyWith$Query$manageFamilyMembers$children.stub(TRes res) =
      _CopyWithStubImpl$Query$manageFamilyMembers$children;

  TRes call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$manageFamilyMembers$children<TRes>
    implements CopyWith$Query$manageFamilyMembers$children<TRes> {
  _CopyWithImpl$Query$manageFamilyMembers$children(
    this._instance,
    this._then,
  );

  final Query$manageFamilyMembers$children _instance;

  final TRes Function(Query$manageFamilyMembers$children) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$manageFamilyMembers$children(
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

class _CopyWithStubImpl$Query$manageFamilyMembers$children<TRes>
    implements CopyWith$Query$manageFamilyMembers$children<TRes> {
  _CopyWithStubImpl$Query$manageFamilyMembers$children(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$familyUserInvite {
  factory Variables$Mutation$familyUserInvite({
    required int familyId,
    required Enum$FamilyUserKind kind,
  }) =>
      Variables$Mutation$familyUserInvite._({
        r'familyId': familyId,
        r'kind': kind,
      });

  Variables$Mutation$familyUserInvite._(this._$data);

  factory Variables$Mutation$familyUserInvite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$kind = data['kind'];
    result$data['kind'] = fromJson$Enum$FamilyUserKind((l$kind as String));
    return Variables$Mutation$familyUserInvite._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Enum$FamilyUserKind get kind => (_$data['kind'] as Enum$FamilyUserKind);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$kind = kind;
    result$data['kind'] = toJson$Enum$FamilyUserKind(l$kind);
    return result$data;
  }

  CopyWith$Variables$Mutation$familyUserInvite<
          Variables$Mutation$familyUserInvite>
      get copyWith => CopyWith$Variables$Mutation$familyUserInvite(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$familyUserInvite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$kind = kind;
    final lOther$kind = other.kind;
    if (l$kind != lOther$kind) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$kind = kind;
    return Object.hashAll([
      l$familyId,
      l$kind,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$familyUserInvite<TRes> {
  factory CopyWith$Variables$Mutation$familyUserInvite(
    Variables$Mutation$familyUserInvite instance,
    TRes Function(Variables$Mutation$familyUserInvite) then,
  ) = _CopyWithImpl$Variables$Mutation$familyUserInvite;

  factory CopyWith$Variables$Mutation$familyUserInvite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$familyUserInvite;

  TRes call({
    int? familyId,
    Enum$FamilyUserKind? kind,
  });
}

class _CopyWithImpl$Variables$Mutation$familyUserInvite<TRes>
    implements CopyWith$Variables$Mutation$familyUserInvite<TRes> {
  _CopyWithImpl$Variables$Mutation$familyUserInvite(
    this._instance,
    this._then,
  );

  final Variables$Mutation$familyUserInvite _instance;

  final TRes Function(Variables$Mutation$familyUserInvite) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? kind = _undefined,
  }) =>
      _then(Variables$Mutation$familyUserInvite._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (kind != _undefined && kind != null)
          'kind': (kind as Enum$FamilyUserKind),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$familyUserInvite<TRes>
    implements CopyWith$Variables$Mutation$familyUserInvite<TRes> {
  _CopyWithStubImpl$Variables$Mutation$familyUserInvite(this._res);

  TRes _res;

  call({
    int? familyId,
    Enum$FamilyUserKind? kind,
  }) =>
      _res;
}

class Mutation$familyUserInvite {
  Mutation$familyUserInvite({
    this.familyUserInvite,
    required this.$__typename,
  });

  factory Mutation$familyUserInvite.fromJson(Map<String, dynamic> json) {
    final l$familyUserInvite = json['familyUserInvite'];
    final l$$__typename = json['__typename'];
    return Mutation$familyUserInvite(
      familyUserInvite: (l$familyUserInvite as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? familyUserInvite;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$familyUserInvite = familyUserInvite;
    _resultData['familyUserInvite'] = l$familyUserInvite;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$familyUserInvite = familyUserInvite;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$familyUserInvite,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$familyUserInvite) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyUserInvite = familyUserInvite;
    final lOther$familyUserInvite = other.familyUserInvite;
    if (l$familyUserInvite != lOther$familyUserInvite) {
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

extension UtilityExtension$Mutation$familyUserInvite
    on Mutation$familyUserInvite {
  CopyWith$Mutation$familyUserInvite<Mutation$familyUserInvite> get copyWith =>
      CopyWith$Mutation$familyUserInvite(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$familyUserInvite<TRes> {
  factory CopyWith$Mutation$familyUserInvite(
    Mutation$familyUserInvite instance,
    TRes Function(Mutation$familyUserInvite) then,
  ) = _CopyWithImpl$Mutation$familyUserInvite;

  factory CopyWith$Mutation$familyUserInvite.stub(TRes res) =
      _CopyWithStubImpl$Mutation$familyUserInvite;

  TRes call({
    String? familyUserInvite,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$familyUserInvite<TRes>
    implements CopyWith$Mutation$familyUserInvite<TRes> {
  _CopyWithImpl$Mutation$familyUserInvite(
    this._instance,
    this._then,
  );

  final Mutation$familyUserInvite _instance;

  final TRes Function(Mutation$familyUserInvite) _then;

  static const _undefined = {};

  TRes call({
    Object? familyUserInvite = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$familyUserInvite(
        familyUserInvite: familyUserInvite == _undefined
            ? _instance.familyUserInvite
            : (familyUserInvite as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$familyUserInvite<TRes>
    implements CopyWith$Mutation$familyUserInvite<TRes> {
  _CopyWithStubImpl$Mutation$familyUserInvite(this._res);

  TRes _res;

  call({
    String? familyUserInvite,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationfamilyUserInvite = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'familyUserInvite'),
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
        variable: VariableNode(name: NameNode(value: 'kind')),
        type: NamedTypeNode(
          name: NameNode(value: 'FamilyUserKind'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'familyUserInvite'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'kind'),
            value: VariableNode(name: NameNode(value: 'kind')),
          ),
        ],
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
]);
Mutation$familyUserInvite _parserFn$Mutation$familyUserInvite(
        Map<String, dynamic> data) =>
    Mutation$familyUserInvite.fromJson(data);
typedef OnMutationCompleted$Mutation$familyUserInvite = FutureOr<void> Function(
  dynamic,
  Mutation$familyUserInvite?,
);

class Options$Mutation$familyUserInvite
    extends graphql.MutationOptions<Mutation$familyUserInvite> {
  Options$Mutation$familyUserInvite({
    String? operationName,
    required Variables$Mutation$familyUserInvite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$familyUserInvite? onCompleted,
    graphql.OnMutationUpdate<Mutation$familyUserInvite>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$familyUserInvite(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationfamilyUserInvite,
          parserFn: _parserFn$Mutation$familyUserInvite,
        );

  final OnMutationCompleted$Mutation$familyUserInvite? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$familyUserInvite
    extends graphql.WatchQueryOptions<Mutation$familyUserInvite> {
  WatchOptions$Mutation$familyUserInvite({
    String? operationName,
    required Variables$Mutation$familyUserInvite variables,
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
          document: documentNodeMutationfamilyUserInvite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$familyUserInvite,
        );
}

extension ClientExtension$Mutation$familyUserInvite on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$familyUserInvite>>
      mutate$familyUserInvite(
              Options$Mutation$familyUserInvite options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$familyUserInvite>
      watchMutation$familyUserInvite(
              WatchOptions$Mutation$familyUserInvite options) =>
          this.watchMutation(options);
}

class Variables$Mutation$leaveFamily {
  factory Variables$Mutation$leaveFamily({required int familyId}) =>
      Variables$Mutation$leaveFamily._({
        r'familyId': familyId,
      });

  Variables$Mutation$leaveFamily._(this._$data);

  factory Variables$Mutation$leaveFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    return Variables$Mutation$leaveFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    return result$data;
  }

  CopyWith$Variables$Mutation$leaveFamily<Variables$Mutation$leaveFamily>
      get copyWith => CopyWith$Variables$Mutation$leaveFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$leaveFamily) ||
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

abstract class CopyWith$Variables$Mutation$leaveFamily<TRes> {
  factory CopyWith$Variables$Mutation$leaveFamily(
    Variables$Mutation$leaveFamily instance,
    TRes Function(Variables$Mutation$leaveFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$leaveFamily;

  factory CopyWith$Variables$Mutation$leaveFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$leaveFamily;

  TRes call({int? familyId});
}

class _CopyWithImpl$Variables$Mutation$leaveFamily<TRes>
    implements CopyWith$Variables$Mutation$leaveFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$leaveFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$leaveFamily _instance;

  final TRes Function(Variables$Mutation$leaveFamily) _then;

  static const _undefined = {};

  TRes call({Object? familyId = _undefined}) =>
      _then(Variables$Mutation$leaveFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$leaveFamily<TRes>
    implements CopyWith$Variables$Mutation$leaveFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$leaveFamily(this._res);

  TRes _res;

  call({int? familyId}) => _res;
}

class Mutation$leaveFamily {
  Mutation$leaveFamily({
    required this.leaveFamily,
    required this.$__typename,
  });

  factory Mutation$leaveFamily.fromJson(Map<String, dynamic> json) {
    final l$leaveFamily = json['leaveFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$leaveFamily(
      leaveFamily: Mutation$leaveFamily$leaveFamily.fromJson(
          (l$leaveFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$leaveFamily$leaveFamily leaveFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$leaveFamily = leaveFamily;
    _resultData['leaveFamily'] = l$leaveFamily.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$leaveFamily = leaveFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$leaveFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$leaveFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$leaveFamily = leaveFamily;
    final lOther$leaveFamily = other.leaveFamily;
    if (l$leaveFamily != lOther$leaveFamily) {
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

extension UtilityExtension$Mutation$leaveFamily on Mutation$leaveFamily {
  CopyWith$Mutation$leaveFamily<Mutation$leaveFamily> get copyWith =>
      CopyWith$Mutation$leaveFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$leaveFamily<TRes> {
  factory CopyWith$Mutation$leaveFamily(
    Mutation$leaveFamily instance,
    TRes Function(Mutation$leaveFamily) then,
  ) = _CopyWithImpl$Mutation$leaveFamily;

  factory CopyWith$Mutation$leaveFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$leaveFamily;

  TRes call({
    Mutation$leaveFamily$leaveFamily? leaveFamily,
    String? $__typename,
  });
  CopyWith$Mutation$leaveFamily$leaveFamily<TRes> get leaveFamily;
}

class _CopyWithImpl$Mutation$leaveFamily<TRes>
    implements CopyWith$Mutation$leaveFamily<TRes> {
  _CopyWithImpl$Mutation$leaveFamily(
    this._instance,
    this._then,
  );

  final Mutation$leaveFamily _instance;

  final TRes Function(Mutation$leaveFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? leaveFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$leaveFamily(
        leaveFamily: leaveFamily == _undefined || leaveFamily == null
            ? _instance.leaveFamily
            : (leaveFamily as Mutation$leaveFamily$leaveFamily),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$leaveFamily$leaveFamily<TRes> get leaveFamily {
    final local$leaveFamily = _instance.leaveFamily;
    return CopyWith$Mutation$leaveFamily$leaveFamily(
        local$leaveFamily, (e) => call(leaveFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$leaveFamily<TRes>
    implements CopyWith$Mutation$leaveFamily<TRes> {
  _CopyWithStubImpl$Mutation$leaveFamily(this._res);

  TRes _res;

  call({
    Mutation$leaveFamily$leaveFamily? leaveFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$leaveFamily$leaveFamily<TRes> get leaveFamily =>
      CopyWith$Mutation$leaveFamily$leaveFamily.stub(_res);
}

const documentNodeMutationleaveFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'leaveFamily'),
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
        name: NameNode(value: 'leaveFamily'),
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
Mutation$leaveFamily _parserFn$Mutation$leaveFamily(
        Map<String, dynamic> data) =>
    Mutation$leaveFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$leaveFamily = FutureOr<void> Function(
  dynamic,
  Mutation$leaveFamily?,
);

class Options$Mutation$leaveFamily
    extends graphql.MutationOptions<Mutation$leaveFamily> {
  Options$Mutation$leaveFamily({
    String? operationName,
    required Variables$Mutation$leaveFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$leaveFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$leaveFamily>? update,
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
                    data == null ? null : _parserFn$Mutation$leaveFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationleaveFamily,
          parserFn: _parserFn$Mutation$leaveFamily,
        );

  final OnMutationCompleted$Mutation$leaveFamily? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$leaveFamily
    extends graphql.WatchQueryOptions<Mutation$leaveFamily> {
  WatchOptions$Mutation$leaveFamily({
    String? operationName,
    required Variables$Mutation$leaveFamily variables,
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
          document: documentNodeMutationleaveFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$leaveFamily,
        );
}

extension ClientExtension$Mutation$leaveFamily on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$leaveFamily>> mutate$leaveFamily(
          Options$Mutation$leaveFamily options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$leaveFamily> watchMutation$leaveFamily(
          WatchOptions$Mutation$leaveFamily options) =>
      this.watchMutation(options);
}

class Mutation$leaveFamily$leaveFamily {
  Mutation$leaveFamily$leaveFamily({
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$leaveFamily$leaveFamily.fromJson(Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$leaveFamily$leaveFamily(
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$leaveFamily$leaveFamily$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$leaveFamily$leaveFamily$errors> errors;

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
    if (!(other is Mutation$leaveFamily$leaveFamily) ||
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

extension UtilityExtension$Mutation$leaveFamily$leaveFamily
    on Mutation$leaveFamily$leaveFamily {
  CopyWith$Mutation$leaveFamily$leaveFamily<Mutation$leaveFamily$leaveFamily>
      get copyWith => CopyWith$Mutation$leaveFamily$leaveFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$leaveFamily$leaveFamily<TRes> {
  factory CopyWith$Mutation$leaveFamily$leaveFamily(
    Mutation$leaveFamily$leaveFamily instance,
    TRes Function(Mutation$leaveFamily$leaveFamily) then,
  ) = _CopyWithImpl$Mutation$leaveFamily$leaveFamily;

  factory CopyWith$Mutation$leaveFamily$leaveFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily;

  TRes call({
    List<Mutation$leaveFamily$leaveFamily$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$leaveFamily$leaveFamily$errors> Function(
              Iterable<
                  CopyWith$Mutation$leaveFamily$leaveFamily$errors<
                      Mutation$leaveFamily$leaveFamily$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$leaveFamily$leaveFamily<TRes>
    implements CopyWith$Mutation$leaveFamily$leaveFamily<TRes> {
  _CopyWithImpl$Mutation$leaveFamily$leaveFamily(
    this._instance,
    this._then,
  );

  final Mutation$leaveFamily$leaveFamily _instance;

  final TRes Function(Mutation$leaveFamily$leaveFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$leaveFamily$leaveFamily(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$leaveFamily$leaveFamily$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$leaveFamily$leaveFamily$errors> Function(
                  Iterable<
                      CopyWith$Mutation$leaveFamily$leaveFamily$errors<
                          Mutation$leaveFamily$leaveFamily$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$leaveFamily$leaveFamily$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily<TRes>
    implements CopyWith$Mutation$leaveFamily$leaveFamily<TRes> {
  _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily(this._res);

  TRes _res;

  call({
    List<Mutation$leaveFamily$leaveFamily$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$leaveFamily$leaveFamily$errors {
  Mutation$leaveFamily$leaveFamily$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$leaveFamily$leaveFamily$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$leaveFamily$leaveFamily$errors(
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
    if (!(other is Mutation$leaveFamily$leaveFamily$errors) ||
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

extension UtilityExtension$Mutation$leaveFamily$leaveFamily$errors
    on Mutation$leaveFamily$leaveFamily$errors {
  CopyWith$Mutation$leaveFamily$leaveFamily$errors<
          Mutation$leaveFamily$leaveFamily$errors>
      get copyWith => CopyWith$Mutation$leaveFamily$leaveFamily$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$leaveFamily$leaveFamily$errors<TRes> {
  factory CopyWith$Mutation$leaveFamily$leaveFamily$errors(
    Mutation$leaveFamily$leaveFamily$errors instance,
    TRes Function(Mutation$leaveFamily$leaveFamily$errors) then,
  ) = _CopyWithImpl$Mutation$leaveFamily$leaveFamily$errors;

  factory CopyWith$Mutation$leaveFamily$leaveFamily$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$leaveFamily$leaveFamily$errors<TRes>
    implements CopyWith$Mutation$leaveFamily$leaveFamily$errors<TRes> {
  _CopyWithImpl$Mutation$leaveFamily$leaveFamily$errors(
    this._instance,
    this._then,
  );

  final Mutation$leaveFamily$leaveFamily$errors _instance;

  final TRes Function(Mutation$leaveFamily$leaveFamily$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$leaveFamily$leaveFamily$errors(
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

class _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily$errors<TRes>
    implements CopyWith$Mutation$leaveFamily$leaveFamily$errors<TRes> {
  _CopyWithStubImpl$Mutation$leaveFamily$leaveFamily$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$removeUser {
  factory Variables$Mutation$removeUser({
    required int familyId,
    required int userId,
  }) =>
      Variables$Mutation$removeUser._({
        r'familyId': familyId,
        r'userId': userId,
      });

  Variables$Mutation$removeUser._(this._$data);

  factory Variables$Mutation$removeUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as int);
    return Variables$Mutation$removeUser._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  int get userId => (_$data['userId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$userId = userId;
    result$data['userId'] = l$userId;
    return result$data;
  }

  CopyWith$Variables$Mutation$removeUser<Variables$Mutation$removeUser>
      get copyWith => CopyWith$Variables$Mutation$removeUser(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$removeUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$userId = userId;
    return Object.hashAll([
      l$familyId,
      l$userId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$removeUser<TRes> {
  factory CopyWith$Variables$Mutation$removeUser(
    Variables$Mutation$removeUser instance,
    TRes Function(Variables$Mutation$removeUser) then,
  ) = _CopyWithImpl$Variables$Mutation$removeUser;

  factory CopyWith$Variables$Mutation$removeUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$removeUser;

  TRes call({
    int? familyId,
    int? userId,
  });
}

class _CopyWithImpl$Variables$Mutation$removeUser<TRes>
    implements CopyWith$Variables$Mutation$removeUser<TRes> {
  _CopyWithImpl$Variables$Mutation$removeUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$removeUser _instance;

  final TRes Function(Variables$Mutation$removeUser) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? userId = _undefined,
  }) =>
      _then(Variables$Mutation$removeUser._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (userId != _undefined && userId != null) 'userId': (userId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$removeUser<TRes>
    implements CopyWith$Variables$Mutation$removeUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$removeUser(this._res);

  TRes _res;

  call({
    int? familyId,
    int? userId,
  }) =>
      _res;
}

class Mutation$removeUser {
  Mutation$removeUser({
    required this.removeUserFromFamily,
    required this.$__typename,
  });

  factory Mutation$removeUser.fromJson(Map<String, dynamic> json) {
    final l$removeUserFromFamily = json['removeUserFromFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$removeUser(
      removeUserFromFamily: Mutation$removeUser$removeUserFromFamily.fromJson(
          (l$removeUserFromFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$removeUser$removeUserFromFamily removeUserFromFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$removeUserFromFamily = removeUserFromFamily;
    _resultData['removeUserFromFamily'] = l$removeUserFromFamily.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$removeUserFromFamily = removeUserFromFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$removeUserFromFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$removeUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$removeUserFromFamily = removeUserFromFamily;
    final lOther$removeUserFromFamily = other.removeUserFromFamily;
    if (l$removeUserFromFamily != lOther$removeUserFromFamily) {
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

extension UtilityExtension$Mutation$removeUser on Mutation$removeUser {
  CopyWith$Mutation$removeUser<Mutation$removeUser> get copyWith =>
      CopyWith$Mutation$removeUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$removeUser<TRes> {
  factory CopyWith$Mutation$removeUser(
    Mutation$removeUser instance,
    TRes Function(Mutation$removeUser) then,
  ) = _CopyWithImpl$Mutation$removeUser;

  factory CopyWith$Mutation$removeUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$removeUser;

  TRes call({
    Mutation$removeUser$removeUserFromFamily? removeUserFromFamily,
    String? $__typename,
  });
  CopyWith$Mutation$removeUser$removeUserFromFamily<TRes>
      get removeUserFromFamily;
}

class _CopyWithImpl$Mutation$removeUser<TRes>
    implements CopyWith$Mutation$removeUser<TRes> {
  _CopyWithImpl$Mutation$removeUser(
    this._instance,
    this._then,
  );

  final Mutation$removeUser _instance;

  final TRes Function(Mutation$removeUser) _then;

  static const _undefined = {};

  TRes call({
    Object? removeUserFromFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$removeUser(
        removeUserFromFamily:
            removeUserFromFamily == _undefined || removeUserFromFamily == null
                ? _instance.removeUserFromFamily
                : (removeUserFromFamily
                    as Mutation$removeUser$removeUserFromFamily),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$removeUser$removeUserFromFamily<TRes>
      get removeUserFromFamily {
    final local$removeUserFromFamily = _instance.removeUserFromFamily;
    return CopyWith$Mutation$removeUser$removeUserFromFamily(
        local$removeUserFromFamily, (e) => call(removeUserFromFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$removeUser<TRes>
    implements CopyWith$Mutation$removeUser<TRes> {
  _CopyWithStubImpl$Mutation$removeUser(this._res);

  TRes _res;

  call({
    Mutation$removeUser$removeUserFromFamily? removeUserFromFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$removeUser$removeUserFromFamily<TRes>
      get removeUserFromFamily =>
          CopyWith$Mutation$removeUser$removeUserFromFamily.stub(_res);
}

const documentNodeMutationremoveUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'removeUser'),
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
        variable: VariableNode(name: NameNode(value: 'userId')),
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
        name: NameNode(value: 'removeUserFromFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'userId'),
            value: VariableNode(name: NameNode(value: 'userId')),
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
Mutation$removeUser _parserFn$Mutation$removeUser(Map<String, dynamic> data) =>
    Mutation$removeUser.fromJson(data);
typedef OnMutationCompleted$Mutation$removeUser = FutureOr<void> Function(
  dynamic,
  Mutation$removeUser?,
);

class Options$Mutation$removeUser
    extends graphql.MutationOptions<Mutation$removeUser> {
  Options$Mutation$removeUser({
    String? operationName,
    required Variables$Mutation$removeUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$removeUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$removeUser>? update,
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
                    data == null ? null : _parserFn$Mutation$removeUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationremoveUser,
          parserFn: _parserFn$Mutation$removeUser,
        );

  final OnMutationCompleted$Mutation$removeUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$removeUser
    extends graphql.WatchQueryOptions<Mutation$removeUser> {
  WatchOptions$Mutation$removeUser({
    String? operationName,
    required Variables$Mutation$removeUser variables,
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
          document: documentNodeMutationremoveUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$removeUser,
        );
}

extension ClientExtension$Mutation$removeUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$removeUser>> mutate$removeUser(
          Options$Mutation$removeUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$removeUser> watchMutation$removeUser(
          WatchOptions$Mutation$removeUser options) =>
      this.watchMutation(options);
}

class Mutation$removeUser$removeUserFromFamily {
  Mutation$removeUser$removeUserFromFamily({
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$removeUser$removeUserFromFamily.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$removeUser$removeUserFromFamily(
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$removeUser$removeUserFromFamily$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$removeUser$removeUserFromFamily$errors> errors;

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
    if (!(other is Mutation$removeUser$removeUserFromFamily) ||
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

extension UtilityExtension$Mutation$removeUser$removeUserFromFamily
    on Mutation$removeUser$removeUserFromFamily {
  CopyWith$Mutation$removeUser$removeUserFromFamily<
          Mutation$removeUser$removeUserFromFamily>
      get copyWith => CopyWith$Mutation$removeUser$removeUserFromFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$removeUser$removeUserFromFamily<TRes> {
  factory CopyWith$Mutation$removeUser$removeUserFromFamily(
    Mutation$removeUser$removeUserFromFamily instance,
    TRes Function(Mutation$removeUser$removeUserFromFamily) then,
  ) = _CopyWithImpl$Mutation$removeUser$removeUserFromFamily;

  factory CopyWith$Mutation$removeUser$removeUserFromFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily;

  TRes call({
    List<Mutation$removeUser$removeUserFromFamily$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$removeUser$removeUserFromFamily$errors> Function(
              Iterable<
                  CopyWith$Mutation$removeUser$removeUserFromFamily$errors<
                      Mutation$removeUser$removeUserFromFamily$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$removeUser$removeUserFromFamily<TRes>
    implements CopyWith$Mutation$removeUser$removeUserFromFamily<TRes> {
  _CopyWithImpl$Mutation$removeUser$removeUserFromFamily(
    this._instance,
    this._then,
  );

  final Mutation$removeUser$removeUserFromFamily _instance;

  final TRes Function(Mutation$removeUser$removeUserFromFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$removeUser$removeUserFromFamily(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$removeUser$removeUserFromFamily$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$removeUser$removeUserFromFamily$errors> Function(
                  Iterable<
                      CopyWith$Mutation$removeUser$removeUserFromFamily$errors<
                          Mutation$removeUser$removeUserFromFamily$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map(
              (e) => CopyWith$Mutation$removeUser$removeUserFromFamily$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily<TRes>
    implements CopyWith$Mutation$removeUser$removeUserFromFamily<TRes> {
  _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily(this._res);

  TRes _res;

  call({
    List<Mutation$removeUser$removeUserFromFamily$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$removeUser$removeUserFromFamily$errors {
  Mutation$removeUser$removeUserFromFamily$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$removeUser$removeUserFromFamily$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$removeUser$removeUserFromFamily$errors(
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
    if (!(other is Mutation$removeUser$removeUserFromFamily$errors) ||
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

extension UtilityExtension$Mutation$removeUser$removeUserFromFamily$errors
    on Mutation$removeUser$removeUserFromFamily$errors {
  CopyWith$Mutation$removeUser$removeUserFromFamily$errors<
          Mutation$removeUser$removeUserFromFamily$errors>
      get copyWith => CopyWith$Mutation$removeUser$removeUserFromFamily$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$removeUser$removeUserFromFamily$errors<TRes> {
  factory CopyWith$Mutation$removeUser$removeUserFromFamily$errors(
    Mutation$removeUser$removeUserFromFamily$errors instance,
    TRes Function(Mutation$removeUser$removeUserFromFamily$errors) then,
  ) = _CopyWithImpl$Mutation$removeUser$removeUserFromFamily$errors;

  factory CopyWith$Mutation$removeUser$removeUserFromFamily$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$removeUser$removeUserFromFamily$errors<TRes>
    implements CopyWith$Mutation$removeUser$removeUserFromFamily$errors<TRes> {
  _CopyWithImpl$Mutation$removeUser$removeUserFromFamily$errors(
    this._instance,
    this._then,
  );

  final Mutation$removeUser$removeUserFromFamily$errors _instance;

  final TRes Function(Mutation$removeUser$removeUserFromFamily$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$removeUser$removeUserFromFamily$errors(
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

class _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily$errors<TRes>
    implements CopyWith$Mutation$removeUser$removeUserFromFamily$errors<TRes> {
  _CopyWithStubImpl$Mutation$removeUser$removeUserFromFamily$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$renameFamily {
  factory Variables$Mutation$renameFamily({
    required int familyId,
    required String newName,
  }) =>
      Variables$Mutation$renameFamily._({
        r'familyId': familyId,
        r'newName': newName,
      });

  Variables$Mutation$renameFamily._(this._$data);

  factory Variables$Mutation$renameFamily.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$newName = data['newName'];
    result$data['newName'] = (l$newName as String);
    return Variables$Mutation$renameFamily._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  String get newName => (_$data['newName'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$newName = newName;
    result$data['newName'] = l$newName;
    return result$data;
  }

  CopyWith$Variables$Mutation$renameFamily<Variables$Mutation$renameFamily>
      get copyWith => CopyWith$Variables$Mutation$renameFamily(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$renameFamily) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$newName = newName;
    final lOther$newName = other.newName;
    if (l$newName != lOther$newName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$newName = newName;
    return Object.hashAll([
      l$familyId,
      l$newName,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$renameFamily<TRes> {
  factory CopyWith$Variables$Mutation$renameFamily(
    Variables$Mutation$renameFamily instance,
    TRes Function(Variables$Mutation$renameFamily) then,
  ) = _CopyWithImpl$Variables$Mutation$renameFamily;

  factory CopyWith$Variables$Mutation$renameFamily.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$renameFamily;

  TRes call({
    int? familyId,
    String? newName,
  });
}

class _CopyWithImpl$Variables$Mutation$renameFamily<TRes>
    implements CopyWith$Variables$Mutation$renameFamily<TRes> {
  _CopyWithImpl$Variables$Mutation$renameFamily(
    this._instance,
    this._then,
  );

  final Variables$Mutation$renameFamily _instance;

  final TRes Function(Variables$Mutation$renameFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? newName = _undefined,
  }) =>
      _then(Variables$Mutation$renameFamily._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (newName != _undefined && newName != null)
          'newName': (newName as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$renameFamily<TRes>
    implements CopyWith$Variables$Mutation$renameFamily<TRes> {
  _CopyWithStubImpl$Variables$Mutation$renameFamily(this._res);

  TRes _res;

  call({
    int? familyId,
    String? newName,
  }) =>
      _res;
}

class Mutation$renameFamily {
  Mutation$renameFamily({
    required this.renameFamily,
    required this.$__typename,
  });

  factory Mutation$renameFamily.fromJson(Map<String, dynamic> json) {
    final l$renameFamily = json['renameFamily'];
    final l$$__typename = json['__typename'];
    return Mutation$renameFamily(
      renameFamily: Mutation$renameFamily$renameFamily.fromJson(
          (l$renameFamily as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$renameFamily$renameFamily renameFamily;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$renameFamily = renameFamily;
    _resultData['renameFamily'] = l$renameFamily.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$renameFamily = renameFamily;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$renameFamily,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$renameFamily) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$renameFamily = renameFamily;
    final lOther$renameFamily = other.renameFamily;
    if (l$renameFamily != lOther$renameFamily) {
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

extension UtilityExtension$Mutation$renameFamily on Mutation$renameFamily {
  CopyWith$Mutation$renameFamily<Mutation$renameFamily> get copyWith =>
      CopyWith$Mutation$renameFamily(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$renameFamily<TRes> {
  factory CopyWith$Mutation$renameFamily(
    Mutation$renameFamily instance,
    TRes Function(Mutation$renameFamily) then,
  ) = _CopyWithImpl$Mutation$renameFamily;

  factory CopyWith$Mutation$renameFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$renameFamily;

  TRes call({
    Mutation$renameFamily$renameFamily? renameFamily,
    String? $__typename,
  });
  CopyWith$Mutation$renameFamily$renameFamily<TRes> get renameFamily;
}

class _CopyWithImpl$Mutation$renameFamily<TRes>
    implements CopyWith$Mutation$renameFamily<TRes> {
  _CopyWithImpl$Mutation$renameFamily(
    this._instance,
    this._then,
  );

  final Mutation$renameFamily _instance;

  final TRes Function(Mutation$renameFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? renameFamily = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$renameFamily(
        renameFamily: renameFamily == _undefined || renameFamily == null
            ? _instance.renameFamily
            : (renameFamily as Mutation$renameFamily$renameFamily),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$renameFamily$renameFamily<TRes> get renameFamily {
    final local$renameFamily = _instance.renameFamily;
    return CopyWith$Mutation$renameFamily$renameFamily(
        local$renameFamily, (e) => call(renameFamily: e));
  }
}

class _CopyWithStubImpl$Mutation$renameFamily<TRes>
    implements CopyWith$Mutation$renameFamily<TRes> {
  _CopyWithStubImpl$Mutation$renameFamily(this._res);

  TRes _res;

  call({
    Mutation$renameFamily$renameFamily? renameFamily,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$renameFamily$renameFamily<TRes> get renameFamily =>
      CopyWith$Mutation$renameFamily$renameFamily.stub(_res);
}

const documentNodeMutationrenameFamily = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'renameFamily'),
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
        variable: VariableNode(name: NameNode(value: 'newName')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'renameFamily'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'newName'),
            value: VariableNode(name: NameNode(value: 'newName')),
          ),
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
Mutation$renameFamily _parserFn$Mutation$renameFamily(
        Map<String, dynamic> data) =>
    Mutation$renameFamily.fromJson(data);
typedef OnMutationCompleted$Mutation$renameFamily = FutureOr<void> Function(
  dynamic,
  Mutation$renameFamily?,
);

class Options$Mutation$renameFamily
    extends graphql.MutationOptions<Mutation$renameFamily> {
  Options$Mutation$renameFamily({
    String? operationName,
    required Variables$Mutation$renameFamily variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$renameFamily? onCompleted,
    graphql.OnMutationUpdate<Mutation$renameFamily>? update,
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
                    data == null ? null : _parserFn$Mutation$renameFamily(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationrenameFamily,
          parserFn: _parserFn$Mutation$renameFamily,
        );

  final OnMutationCompleted$Mutation$renameFamily? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$renameFamily
    extends graphql.WatchQueryOptions<Mutation$renameFamily> {
  WatchOptions$Mutation$renameFamily({
    String? operationName,
    required Variables$Mutation$renameFamily variables,
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
          document: documentNodeMutationrenameFamily,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$renameFamily,
        );
}

extension ClientExtension$Mutation$renameFamily on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$renameFamily>> mutate$renameFamily(
          Options$Mutation$renameFamily options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$renameFamily> watchMutation$renameFamily(
          WatchOptions$Mutation$renameFamily options) =>
      this.watchMutation(options);
}

class Mutation$renameFamily$renameFamily {
  Mutation$renameFamily$renameFamily({
    this.family,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$renameFamily$renameFamily.fromJson(
      Map<String, dynamic> json) {
    final l$family = json['family'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$renameFamily$renameFamily(
      family: l$family == null
          ? null
          : Mutation$renameFamily$renameFamily$family.fromJson(
              (l$family as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$renameFamily$renameFamily$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$renameFamily$renameFamily$family? family;

  final List<Mutation$renameFamily$renameFamily$errors> errors;

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
    if (!(other is Mutation$renameFamily$renameFamily) ||
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

extension UtilityExtension$Mutation$renameFamily$renameFamily
    on Mutation$renameFamily$renameFamily {
  CopyWith$Mutation$renameFamily$renameFamily<
          Mutation$renameFamily$renameFamily>
      get copyWith => CopyWith$Mutation$renameFamily$renameFamily(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$renameFamily$renameFamily<TRes> {
  factory CopyWith$Mutation$renameFamily$renameFamily(
    Mutation$renameFamily$renameFamily instance,
    TRes Function(Mutation$renameFamily$renameFamily) then,
  ) = _CopyWithImpl$Mutation$renameFamily$renameFamily;

  factory CopyWith$Mutation$renameFamily$renameFamily.stub(TRes res) =
      _CopyWithStubImpl$Mutation$renameFamily$renameFamily;

  TRes call({
    Mutation$renameFamily$renameFamily$family? family,
    List<Mutation$renameFamily$renameFamily$errors>? errors,
    String? $__typename,
  });
  CopyWith$Mutation$renameFamily$renameFamily$family<TRes> get family;
  TRes errors(
      Iterable<Mutation$renameFamily$renameFamily$errors> Function(
              Iterable<
                  CopyWith$Mutation$renameFamily$renameFamily$errors<
                      Mutation$renameFamily$renameFamily$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$renameFamily$renameFamily<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily<TRes> {
  _CopyWithImpl$Mutation$renameFamily$renameFamily(
    this._instance,
    this._then,
  );

  final Mutation$renameFamily$renameFamily _instance;

  final TRes Function(Mutation$renameFamily$renameFamily) _then;

  static const _undefined = {};

  TRes call({
    Object? family = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$renameFamily$renameFamily(
        family: family == _undefined
            ? _instance.family
            : (family as Mutation$renameFamily$renameFamily$family?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$renameFamily$renameFamily$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$renameFamily$renameFamily$family<TRes> get family {
    final local$family = _instance.family;
    return local$family == null
        ? CopyWith$Mutation$renameFamily$renameFamily$family.stub(
            _then(_instance))
        : CopyWith$Mutation$renameFamily$renameFamily$family(
            local$family, (e) => call(family: e));
  }

  TRes errors(
          Iterable<Mutation$renameFamily$renameFamily$errors> Function(
                  Iterable<
                      CopyWith$Mutation$renameFamily$renameFamily$errors<
                          Mutation$renameFamily$renameFamily$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Mutation$renameFamily$renameFamily$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$renameFamily$renameFamily<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily<TRes> {
  _CopyWithStubImpl$Mutation$renameFamily$renameFamily(this._res);

  TRes _res;

  call({
    Mutation$renameFamily$renameFamily$family? family,
    List<Mutation$renameFamily$renameFamily$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$renameFamily$renameFamily$family<TRes> get family =>
      CopyWith$Mutation$renameFamily$renameFamily$family.stub(_res);
  errors(_fn) => _res;
}

class Mutation$renameFamily$renameFamily$family {
  Mutation$renameFamily$renameFamily$family({
    required this.id,
    required this.name,
    required this.$__typename,
  });

  factory Mutation$renameFamily$renameFamily$family.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$renameFamily$renameFamily$family(
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
    if (!(other is Mutation$renameFamily$renameFamily$family) ||
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

extension UtilityExtension$Mutation$renameFamily$renameFamily$family
    on Mutation$renameFamily$renameFamily$family {
  CopyWith$Mutation$renameFamily$renameFamily$family<
          Mutation$renameFamily$renameFamily$family>
      get copyWith => CopyWith$Mutation$renameFamily$renameFamily$family(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$renameFamily$renameFamily$family<TRes> {
  factory CopyWith$Mutation$renameFamily$renameFamily$family(
    Mutation$renameFamily$renameFamily$family instance,
    TRes Function(Mutation$renameFamily$renameFamily$family) then,
  ) = _CopyWithImpl$Mutation$renameFamily$renameFamily$family;

  factory CopyWith$Mutation$renameFamily$renameFamily$family.stub(TRes res) =
      _CopyWithStubImpl$Mutation$renameFamily$renameFamily$family;

  TRes call({
    int? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$renameFamily$renameFamily$family<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily$family<TRes> {
  _CopyWithImpl$Mutation$renameFamily$renameFamily$family(
    this._instance,
    this._then,
  );

  final Mutation$renameFamily$renameFamily$family _instance;

  final TRes Function(Mutation$renameFamily$renameFamily$family) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$renameFamily$renameFamily$family(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$renameFamily$renameFamily$family<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily$family<TRes> {
  _CopyWithStubImpl$Mutation$renameFamily$renameFamily$family(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$renameFamily$renameFamily$errors {
  Mutation$renameFamily$renameFamily$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$renameFamily$renameFamily$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$renameFamily$renameFamily$errors(
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
    if (!(other is Mutation$renameFamily$renameFamily$errors) ||
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

extension UtilityExtension$Mutation$renameFamily$renameFamily$errors
    on Mutation$renameFamily$renameFamily$errors {
  CopyWith$Mutation$renameFamily$renameFamily$errors<
          Mutation$renameFamily$renameFamily$errors>
      get copyWith => CopyWith$Mutation$renameFamily$renameFamily$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$renameFamily$renameFamily$errors<TRes> {
  factory CopyWith$Mutation$renameFamily$renameFamily$errors(
    Mutation$renameFamily$renameFamily$errors instance,
    TRes Function(Mutation$renameFamily$renameFamily$errors) then,
  ) = _CopyWithImpl$Mutation$renameFamily$renameFamily$errors;

  factory CopyWith$Mutation$renameFamily$renameFamily$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$renameFamily$renameFamily$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$renameFamily$renameFamily$errors<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily$errors<TRes> {
  _CopyWithImpl$Mutation$renameFamily$renameFamily$errors(
    this._instance,
    this._then,
  );

  final Mutation$renameFamily$renameFamily$errors _instance;

  final TRes Function(Mutation$renameFamily$renameFamily$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$renameFamily$renameFamily$errors(
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

class _CopyWithStubImpl$Mutation$renameFamily$renameFamily$errors<TRes>
    implements CopyWith$Mutation$renameFamily$renameFamily$errors<TRes> {
  _CopyWithStubImpl$Mutation$renameFamily$renameFamily$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
