import '../../../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$ledgerChildDetail {
  factory Variables$Query$ledgerChildDetail({
    required int familyId,
    Input$LedgerFilterInput? where,
    List<Input$LedgerSortInput>? order,
  }) =>
      Variables$Query$ledgerChildDetail._({
        r'familyId': familyId,
        if (where != null) r'where': where,
        if (order != null) r'order': order,
      });

  Variables$Query$ledgerChildDetail._(this._$data);

  factory Variables$Query$ledgerChildDetail.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$LedgerFilterInput.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('order')) {
      final l$order = data['order'];
      result$data['order'] = (l$order as List<dynamic>?)
          ?.map((e) =>
              Input$LedgerSortInput.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ledgerChildDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$LedgerFilterInput? get where =>
      (_$data['where'] as Input$LedgerFilterInput?);
  List<Input$LedgerSortInput>? get order =>
      (_$data['order'] as List<Input$LedgerSortInput>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('order')) {
      final l$order = order;
      result$data['order'] = l$order?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$ledgerChildDetail<Variables$Query$ledgerChildDetail>
      get copyWith => CopyWith$Variables$Query$ledgerChildDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ledgerChildDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (_$data.containsKey('order') != other._$data.containsKey('order')) {
      return false;
    }
    if (l$order != null && lOther$order != null) {
      if (l$order.length != lOther$order.length) {
        return false;
      }
      for (int i = 0; i < l$order.length; i++) {
        final l$order$entry = l$order[i];
        final lOther$order$entry = lOther$order[i];
        if (l$order$entry != lOther$order$entry) {
          return false;
        }
      }
    } else if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$where = where;
    final l$order = order;
    return Object.hashAll([
      l$familyId,
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('order')
          ? l$order == null
              ? null
              : Object.hashAll(l$order.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ledgerChildDetail<TRes> {
  factory CopyWith$Variables$Query$ledgerChildDetail(
    Variables$Query$ledgerChildDetail instance,
    TRes Function(Variables$Query$ledgerChildDetail) then,
  ) = _CopyWithImpl$Variables$Query$ledgerChildDetail;

  factory CopyWith$Variables$Query$ledgerChildDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ledgerChildDetail;

  TRes call({
    int? familyId,
    Input$LedgerFilterInput? where,
    List<Input$LedgerSortInput>? order,
  });
}

class _CopyWithImpl$Variables$Query$ledgerChildDetail<TRes>
    implements CopyWith$Variables$Query$ledgerChildDetail<TRes> {
  _CopyWithImpl$Variables$Query$ledgerChildDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$ledgerChildDetail _instance;

  final TRes Function(Variables$Query$ledgerChildDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? where = _undefined,
    Object? order = _undefined,
  }) =>
      _then(Variables$Query$ledgerChildDetail._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (where != _undefined) 'where': (where as Input$LedgerFilterInput?),
        if (order != _undefined)
          'order': (order as List<Input$LedgerSortInput>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ledgerChildDetail<TRes>
    implements CopyWith$Variables$Query$ledgerChildDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$ledgerChildDetail(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$LedgerFilterInput? where,
    List<Input$LedgerSortInput>? order,
  }) =>
      _res;
}

class Query$ledgerChildDetail {
  Query$ledgerChildDetail({
    required this.ledgerList,
    required this.$__typename,
  });

  factory Query$ledgerChildDetail.fromJson(Map<String, dynamic> json) {
    final l$ledgerList = json['ledgerList'];
    final l$$__typename = json['__typename'];
    return Query$ledgerChildDetail(
      ledgerList: (l$ledgerList as List<dynamic>)
          .map((e) => Query$ledgerChildDetail$ledgerList.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ledgerChildDetail$ledgerList> ledgerList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ledgerList = ledgerList;
    _resultData['ledgerList'] = l$ledgerList.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ledgerList = ledgerList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$ledgerList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerChildDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ledgerList = ledgerList;
    final lOther$ledgerList = other.ledgerList;
    if (l$ledgerList.length != lOther$ledgerList.length) {
      return false;
    }
    for (int i = 0; i < l$ledgerList.length; i++) {
      final l$ledgerList$entry = l$ledgerList[i];
      final lOther$ledgerList$entry = lOther$ledgerList[i];
      if (l$ledgerList$entry != lOther$ledgerList$entry) {
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

extension UtilityExtension$Query$ledgerChildDetail on Query$ledgerChildDetail {
  CopyWith$Query$ledgerChildDetail<Query$ledgerChildDetail> get copyWith =>
      CopyWith$Query$ledgerChildDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ledgerChildDetail<TRes> {
  factory CopyWith$Query$ledgerChildDetail(
    Query$ledgerChildDetail instance,
    TRes Function(Query$ledgerChildDetail) then,
  ) = _CopyWithImpl$Query$ledgerChildDetail;

  factory CopyWith$Query$ledgerChildDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerChildDetail;

  TRes call({
    List<Query$ledgerChildDetail$ledgerList>? ledgerList,
    String? $__typename,
  });
  TRes ledgerList(
      Iterable<Query$ledgerChildDetail$ledgerList> Function(
              Iterable<
                  CopyWith$Query$ledgerChildDetail$ledgerList<
                      Query$ledgerChildDetail$ledgerList>>)
          _fn);
}

class _CopyWithImpl$Query$ledgerChildDetail<TRes>
    implements CopyWith$Query$ledgerChildDetail<TRes> {
  _CopyWithImpl$Query$ledgerChildDetail(
    this._instance,
    this._then,
  );

  final Query$ledgerChildDetail _instance;

  final TRes Function(Query$ledgerChildDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? ledgerList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerChildDetail(
        ledgerList: ledgerList == _undefined || ledgerList == null
            ? _instance.ledgerList
            : (ledgerList as List<Query$ledgerChildDetail$ledgerList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ledgerList(
          Iterable<Query$ledgerChildDetail$ledgerList> Function(
                  Iterable<
                      CopyWith$Query$ledgerChildDetail$ledgerList<
                          Query$ledgerChildDetail$ledgerList>>)
              _fn) =>
      call(
          ledgerList: _fn(_instance.ledgerList
              .map((e) => CopyWith$Query$ledgerChildDetail$ledgerList(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ledgerChildDetail<TRes>
    implements CopyWith$Query$ledgerChildDetail<TRes> {
  _CopyWithStubImpl$Query$ledgerChildDetail(this._res);

  TRes _res;

  call({
    List<Query$ledgerChildDetail$ledgerList>? ledgerList,
    String? $__typename,
  }) =>
      _res;
  ledgerList(_fn) => _res;
}

const documentNodeQueryledgerChildDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ledgerChildDetail'),
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
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'LedgerFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'LedgerSortInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'ledgerList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
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
            name: NameNode(value: 'reward'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'enteredAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'parent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
Query$ledgerChildDetail _parserFn$Query$ledgerChildDetail(
        Map<String, dynamic> data) =>
    Query$ledgerChildDetail.fromJson(data);

class Options$Query$ledgerChildDetail
    extends graphql.QueryOptions<Query$ledgerChildDetail> {
  Options$Query$ledgerChildDetail({
    String? operationName,
    required Variables$Query$ledgerChildDetail variables,
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
          document: documentNodeQueryledgerChildDetail,
          parserFn: _parserFn$Query$ledgerChildDetail,
        );
}

class WatchOptions$Query$ledgerChildDetail
    extends graphql.WatchQueryOptions<Query$ledgerChildDetail> {
  WatchOptions$Query$ledgerChildDetail({
    String? operationName,
    required Variables$Query$ledgerChildDetail variables,
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
          document: documentNodeQueryledgerChildDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ledgerChildDetail,
        );
}

class FetchMoreOptions$Query$ledgerChildDetail
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ledgerChildDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ledgerChildDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryledgerChildDetail,
        );
}

extension ClientExtension$Query$ledgerChildDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ledgerChildDetail>> query$ledgerChildDetail(
          Options$Query$ledgerChildDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ledgerChildDetail> watchQuery$ledgerChildDetail(
          WatchOptions$Query$ledgerChildDetail options) =>
      this.watchQuery(options);
  void writeQuery$ledgerChildDetail({
    required Query$ledgerChildDetail data,
    required Variables$Query$ledgerChildDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryledgerChildDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ledgerChildDetail? readQuery$ledgerChildDetail({
    required Variables$Query$ledgerChildDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryledgerChildDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ledgerChildDetail.fromJson(result);
  }
}

class Query$ledgerChildDetail$ledgerList {
  Query$ledgerChildDetail$ledgerList({
    required this.id,
    required this.title,
    required this.reward,
    required this.enteredAt,
    required this.parent,
    required this.$__typename,
  });

  factory Query$ledgerChildDetail$ledgerList.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$reward = json['reward'];
    final l$enteredAt = json['enteredAt'];
    final l$parent = json['parent'];
    final l$$__typename = json['__typename'];
    return Query$ledgerChildDetail$ledgerList(
      id: (l$id as int),
      title: (l$title as String),
      reward: (l$reward as int),
      enteredAt: DateTime.parse((l$enteredAt as String)),
      parent: Query$ledgerChildDetail$ledgerList$parent.fromJson(
          (l$parent as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final int reward;

  final DateTime enteredAt;

  final Query$ledgerChildDetail$ledgerList$parent parent;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$reward = reward;
    _resultData['reward'] = l$reward;
    final l$enteredAt = enteredAt;
    _resultData['enteredAt'] = l$enteredAt.toIso8601String();
    final l$parent = parent;
    _resultData['parent'] = l$parent.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$reward = reward;
    final l$enteredAt = enteredAt;
    final l$parent = parent;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$reward,
      l$enteredAt,
      l$parent,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerChildDetail$ledgerList) ||
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
    final l$enteredAt = enteredAt;
    final lOther$enteredAt = other.enteredAt;
    if (l$enteredAt != lOther$enteredAt) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (l$parent != lOther$parent) {
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

extension UtilityExtension$Query$ledgerChildDetail$ledgerList
    on Query$ledgerChildDetail$ledgerList {
  CopyWith$Query$ledgerChildDetail$ledgerList<
          Query$ledgerChildDetail$ledgerList>
      get copyWith => CopyWith$Query$ledgerChildDetail$ledgerList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerChildDetail$ledgerList<TRes> {
  factory CopyWith$Query$ledgerChildDetail$ledgerList(
    Query$ledgerChildDetail$ledgerList instance,
    TRes Function(Query$ledgerChildDetail$ledgerList) then,
  ) = _CopyWithImpl$Query$ledgerChildDetail$ledgerList;

  factory CopyWith$Query$ledgerChildDetail$ledgerList.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList;

  TRes call({
    int? id,
    String? title,
    int? reward,
    DateTime? enteredAt,
    Query$ledgerChildDetail$ledgerList$parent? parent,
    String? $__typename,
  });
  CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> get parent;
}

class _CopyWithImpl$Query$ledgerChildDetail$ledgerList<TRes>
    implements CopyWith$Query$ledgerChildDetail$ledgerList<TRes> {
  _CopyWithImpl$Query$ledgerChildDetail$ledgerList(
    this._instance,
    this._then,
  );

  final Query$ledgerChildDetail$ledgerList _instance;

  final TRes Function(Query$ledgerChildDetail$ledgerList) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? reward = _undefined,
    Object? enteredAt = _undefined,
    Object? parent = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerChildDetail$ledgerList(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        reward: reward == _undefined || reward == null
            ? _instance.reward
            : (reward as int),
        enteredAt: enteredAt == _undefined || enteredAt == null
            ? _instance.enteredAt
            : (enteredAt as DateTime),
        parent: parent == _undefined || parent == null
            ? _instance.parent
            : (parent as Query$ledgerChildDetail$ledgerList$parent),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> get parent {
    final local$parent = _instance.parent;
    return CopyWith$Query$ledgerChildDetail$ledgerList$parent(
        local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList<TRes>
    implements CopyWith$Query$ledgerChildDetail$ledgerList<TRes> {
  _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    int? reward,
    DateTime? enteredAt,
    Query$ledgerChildDetail$ledgerList$parent? parent,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> get parent =>
      CopyWith$Query$ledgerChildDetail$ledgerList$parent.stub(_res);
}

class Query$ledgerChildDetail$ledgerList$parent {
  Query$ledgerChildDetail$ledgerList$parent({
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$ledgerChildDetail$ledgerList$parent.fromJson(
      Map<String, dynamic> json) {
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$ledgerChildDetail$ledgerList$parent(
      pictureUrl: (l$pictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? pictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pictureUrl = pictureUrl;
    _resultData['pictureUrl'] = l$pictureUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pictureUrl = pictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pictureUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerChildDetail$ledgerList$parent) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ledgerChildDetail$ledgerList$parent
    on Query$ledgerChildDetail$ledgerList$parent {
  CopyWith$Query$ledgerChildDetail$ledgerList$parent<
          Query$ledgerChildDetail$ledgerList$parent>
      get copyWith => CopyWith$Query$ledgerChildDetail$ledgerList$parent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> {
  factory CopyWith$Query$ledgerChildDetail$ledgerList$parent(
    Query$ledgerChildDetail$ledgerList$parent instance,
    TRes Function(Query$ledgerChildDetail$ledgerList$parent) then,
  ) = _CopyWithImpl$Query$ledgerChildDetail$ledgerList$parent;

  factory CopyWith$Query$ledgerChildDetail$ledgerList$parent.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList$parent;

  TRes call({
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ledgerChildDetail$ledgerList$parent<TRes>
    implements CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> {
  _CopyWithImpl$Query$ledgerChildDetail$ledgerList$parent(
    this._instance,
    this._then,
  );

  final Query$ledgerChildDetail$ledgerList$parent _instance;

  final TRes Function(Query$ledgerChildDetail$ledgerList$parent) _then;

  static const _undefined = {};

  TRes call({
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerChildDetail$ledgerList$parent(
        pictureUrl: pictureUrl == _undefined
            ? _instance.pictureUrl
            : (pictureUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList$parent<TRes>
    implements CopyWith$Query$ledgerChildDetail$ledgerList$parent<TRes> {
  _CopyWithStubImpl$Query$ledgerChildDetail$ledgerList$parent(this._res);

  TRes _res;

  call({
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ledgerRecordDetail {
  factory Variables$Query$ledgerRecordDetail({
    required int familyId,
    required int id,
  }) =>
      Variables$Query$ledgerRecordDetail._({
        r'familyId': familyId,
        r'id': id,
      });

  Variables$Query$ledgerRecordDetail._(this._$data);

  factory Variables$Query$ledgerRecordDetail.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$ledgerRecordDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ledgerRecordDetail<
          Variables$Query$ledgerRecordDetail>
      get copyWith => CopyWith$Variables$Query$ledgerRecordDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ledgerRecordDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$familyId = familyId;
    final lOther$familyId = other.familyId;
    if (l$familyId != lOther$familyId) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$id = id;
    return Object.hashAll([
      l$familyId,
      l$id,
    ]);
  }
}

abstract class CopyWith$Variables$Query$ledgerRecordDetail<TRes> {
  factory CopyWith$Variables$Query$ledgerRecordDetail(
    Variables$Query$ledgerRecordDetail instance,
    TRes Function(Variables$Query$ledgerRecordDetail) then,
  ) = _CopyWithImpl$Variables$Query$ledgerRecordDetail;

  factory CopyWith$Variables$Query$ledgerRecordDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ledgerRecordDetail;

  TRes call({
    int? familyId,
    int? id,
  });
}

class _CopyWithImpl$Variables$Query$ledgerRecordDetail<TRes>
    implements CopyWith$Variables$Query$ledgerRecordDetail<TRes> {
  _CopyWithImpl$Variables$Query$ledgerRecordDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$ledgerRecordDetail _instance;

  final TRes Function(Variables$Query$ledgerRecordDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Variables$Query$ledgerRecordDetail._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$ledgerRecordDetail<TRes>
    implements CopyWith$Variables$Query$ledgerRecordDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$ledgerRecordDetail(this._res);

  TRes _res;

  call({
    int? familyId,
    int? id,
  }) =>
      _res;
}

class Query$ledgerRecordDetail {
  Query$ledgerRecordDetail({
    required this.ledgerDetail,
    required this.$__typename,
  });

  factory Query$ledgerRecordDetail.fromJson(Map<String, dynamic> json) {
    final l$ledgerDetail = json['ledgerDetail'];
    final l$$__typename = json['__typename'];
    return Query$ledgerRecordDetail(
      ledgerDetail: Query$ledgerRecordDetail$ledgerDetail.fromJson(
          (l$ledgerDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ledgerRecordDetail$ledgerDetail ledgerDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ledgerDetail = ledgerDetail;
    _resultData['ledgerDetail'] = l$ledgerDetail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ledgerDetail = ledgerDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ledgerDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerRecordDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ledgerDetail = ledgerDetail;
    final lOther$ledgerDetail = other.ledgerDetail;
    if (l$ledgerDetail != lOther$ledgerDetail) {
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

extension UtilityExtension$Query$ledgerRecordDetail
    on Query$ledgerRecordDetail {
  CopyWith$Query$ledgerRecordDetail<Query$ledgerRecordDetail> get copyWith =>
      CopyWith$Query$ledgerRecordDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ledgerRecordDetail<TRes> {
  factory CopyWith$Query$ledgerRecordDetail(
    Query$ledgerRecordDetail instance,
    TRes Function(Query$ledgerRecordDetail) then,
  ) = _CopyWithImpl$Query$ledgerRecordDetail;

  factory CopyWith$Query$ledgerRecordDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerRecordDetail;

  TRes call({
    Query$ledgerRecordDetail$ledgerDetail? ledgerDetail,
    String? $__typename,
  });
  CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> get ledgerDetail;
}

class _CopyWithImpl$Query$ledgerRecordDetail<TRes>
    implements CopyWith$Query$ledgerRecordDetail<TRes> {
  _CopyWithImpl$Query$ledgerRecordDetail(
    this._instance,
    this._then,
  );

  final Query$ledgerRecordDetail _instance;

  final TRes Function(Query$ledgerRecordDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? ledgerDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerRecordDetail(
        ledgerDetail: ledgerDetail == _undefined || ledgerDetail == null
            ? _instance.ledgerDetail
            : (ledgerDetail as Query$ledgerRecordDetail$ledgerDetail),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> get ledgerDetail {
    final local$ledgerDetail = _instance.ledgerDetail;
    return CopyWith$Query$ledgerRecordDetail$ledgerDetail(
        local$ledgerDetail, (e) => call(ledgerDetail: e));
  }
}

class _CopyWithStubImpl$Query$ledgerRecordDetail<TRes>
    implements CopyWith$Query$ledgerRecordDetail<TRes> {
  _CopyWithStubImpl$Query$ledgerRecordDetail(this._res);

  TRes _res;

  call({
    Query$ledgerRecordDetail$ledgerDetail? ledgerDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> get ledgerDetail =>
      CopyWith$Query$ledgerRecordDetail$ledgerDetail.stub(_res);
}

const documentNodeQueryledgerRecordDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ledgerRecordDetail'),
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
        variable: VariableNode(name: NameNode(value: 'id')),
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
        name: NameNode(value: 'ledgerDetail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'familyId'),
            value: VariableNode(name: NameNode(value: 'familyId')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ledger'),
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
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'enteredAt'),
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
                name: NameNode(value: 'parent'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                name: NameNode(value: 'parentNote'),
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
Query$ledgerRecordDetail _parserFn$Query$ledgerRecordDetail(
        Map<String, dynamic> data) =>
    Query$ledgerRecordDetail.fromJson(data);

class Options$Query$ledgerRecordDetail
    extends graphql.QueryOptions<Query$ledgerRecordDetail> {
  Options$Query$ledgerRecordDetail({
    String? operationName,
    required Variables$Query$ledgerRecordDetail variables,
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
          document: documentNodeQueryledgerRecordDetail,
          parserFn: _parserFn$Query$ledgerRecordDetail,
        );
}

class WatchOptions$Query$ledgerRecordDetail
    extends graphql.WatchQueryOptions<Query$ledgerRecordDetail> {
  WatchOptions$Query$ledgerRecordDetail({
    String? operationName,
    required Variables$Query$ledgerRecordDetail variables,
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
          document: documentNodeQueryledgerRecordDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ledgerRecordDetail,
        );
}

class FetchMoreOptions$Query$ledgerRecordDetail
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ledgerRecordDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ledgerRecordDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryledgerRecordDetail,
        );
}

extension ClientExtension$Query$ledgerRecordDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ledgerRecordDetail>>
      query$ledgerRecordDetail(
              Options$Query$ledgerRecordDetail options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$ledgerRecordDetail>
      watchQuery$ledgerRecordDetail(
              WatchOptions$Query$ledgerRecordDetail options) =>
          this.watchQuery(options);
  void writeQuery$ledgerRecordDetail({
    required Query$ledgerRecordDetail data,
    required Variables$Query$ledgerRecordDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryledgerRecordDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ledgerRecordDetail? readQuery$ledgerRecordDetail({
    required Variables$Query$ledgerRecordDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryledgerRecordDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ledgerRecordDetail.fromJson(result);
  }
}

class Query$ledgerRecordDetail$ledgerDetail {
  Query$ledgerRecordDetail$ledgerDetail({
    this.ledger,
    required this.$__typename,
  });

  factory Query$ledgerRecordDetail$ledgerDetail.fromJson(
      Map<String, dynamic> json) {
    final l$ledger = json['ledger'];
    final l$$__typename = json['__typename'];
    return Query$ledgerRecordDetail$ledgerDetail(
      ledger: l$ledger == null
          ? null
          : Query$ledgerRecordDetail$ledgerDetail$ledger.fromJson(
              (l$ledger as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ledgerRecordDetail$ledgerDetail$ledger? ledger;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ledger = ledger;
    _resultData['ledger'] = l$ledger?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ledger = ledger;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ledger,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerRecordDetail$ledgerDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ledger = ledger;
    final lOther$ledger = other.ledger;
    if (l$ledger != lOther$ledger) {
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

extension UtilityExtension$Query$ledgerRecordDetail$ledgerDetail
    on Query$ledgerRecordDetail$ledgerDetail {
  CopyWith$Query$ledgerRecordDetail$ledgerDetail<
          Query$ledgerRecordDetail$ledgerDetail>
      get copyWith => CopyWith$Query$ledgerRecordDetail$ledgerDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> {
  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail(
    Query$ledgerRecordDetail$ledgerDetail instance,
    TRes Function(Query$ledgerRecordDetail$ledgerDetail) then,
  ) = _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail;

  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail;

  TRes call({
    Query$ledgerRecordDetail$ledgerDetail$ledger? ledger,
    String? $__typename,
  });
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> get ledger;
}

class _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail<TRes>
    implements CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> {
  _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail(
    this._instance,
    this._then,
  );

  final Query$ledgerRecordDetail$ledgerDetail _instance;

  final TRes Function(Query$ledgerRecordDetail$ledgerDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? ledger = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerRecordDetail$ledgerDetail(
        ledger: ledger == _undefined
            ? _instance.ledger
            : (ledger as Query$ledgerRecordDetail$ledgerDetail$ledger?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> get ledger {
    final local$ledger = _instance.ledger;
    return local$ledger == null
        ? CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger.stub(
            _then(_instance))
        : CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger(
            local$ledger, (e) => call(ledger: e));
  }
}

class _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail<TRes>
    implements CopyWith$Query$ledgerRecordDetail$ledgerDetail<TRes> {
  _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail(this._res);

  TRes _res;

  call({
    Query$ledgerRecordDetail$ledgerDetail$ledger? ledger,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> get ledger =>
      CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger.stub(_res);
}

class Query$ledgerRecordDetail$ledgerDetail$ledger {
  Query$ledgerRecordDetail$ledgerDetail$ledger({
    required this.id,
    required this.title,
    this.description,
    required this.enteredAt,
    required this.reward,
    required this.parent,
    this.parentNote,
    required this.$__typename,
  });

  factory Query$ledgerRecordDetail$ledgerDetail$ledger.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$enteredAt = json['enteredAt'];
    final l$reward = json['reward'];
    final l$parent = json['parent'];
    final l$parentNote = json['parentNote'];
    final l$$__typename = json['__typename'];
    return Query$ledgerRecordDetail$ledgerDetail$ledger(
      id: (l$id as int),
      title: (l$title as String),
      description: (l$description as String?),
      enteredAt: DateTime.parse((l$enteredAt as String)),
      reward: (l$reward as int),
      parent: Query$ledgerRecordDetail$ledgerDetail$ledger$parent.fromJson(
          (l$parent as Map<String, dynamic>)),
      parentNote: (l$parentNote as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? description;

  final DateTime enteredAt;

  final int reward;

  final Query$ledgerRecordDetail$ledgerDetail$ledger$parent parent;

  final String? parentNote;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$enteredAt = enteredAt;
    _resultData['enteredAt'] = l$enteredAt.toIso8601String();
    final l$reward = reward;
    _resultData['reward'] = l$reward;
    final l$parent = parent;
    _resultData['parent'] = l$parent.toJson();
    final l$parentNote = parentNote;
    _resultData['parentNote'] = l$parentNote;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$enteredAt = enteredAt;
    final l$reward = reward;
    final l$parent = parent;
    final l$parentNote = parentNote;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$enteredAt,
      l$reward,
      l$parent,
      l$parentNote,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ledgerRecordDetail$ledgerDetail$ledger) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$enteredAt = enteredAt;
    final lOther$enteredAt = other.enteredAt;
    if (l$enteredAt != lOther$enteredAt) {
      return false;
    }
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (l$reward != lOther$reward) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$parentNote = parentNote;
    final lOther$parentNote = other.parentNote;
    if (l$parentNote != lOther$parentNote) {
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

extension UtilityExtension$Query$ledgerRecordDetail$ledgerDetail$ledger
    on Query$ledgerRecordDetail$ledgerDetail$ledger {
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<
          Query$ledgerRecordDetail$ledgerDetail$ledger>
      get copyWith => CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> {
  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger(
    Query$ledgerRecordDetail$ledgerDetail$ledger instance,
    TRes Function(Query$ledgerRecordDetail$ledgerDetail$ledger) then,
  ) = _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger;

  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger.stub(TRes res) =
      _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger;

  TRes call({
    int? id,
    String? title,
    String? description,
    DateTime? enteredAt,
    int? reward,
    Query$ledgerRecordDetail$ledgerDetail$ledger$parent? parent,
    String? parentNote,
    String? $__typename,
  });
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes> get parent;
}

class _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes>
    implements CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> {
  _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger(
    this._instance,
    this._then,
  );

  final Query$ledgerRecordDetail$ledgerDetail$ledger _instance;

  final TRes Function(Query$ledgerRecordDetail$ledgerDetail$ledger) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? enteredAt = _undefined,
    Object? reward = _undefined,
    Object? parent = _undefined,
    Object? parentNote = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerRecordDetail$ledgerDetail$ledger(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        enteredAt: enteredAt == _undefined || enteredAt == null
            ? _instance.enteredAt
            : (enteredAt as DateTime),
        reward: reward == _undefined || reward == null
            ? _instance.reward
            : (reward as int),
        parent: parent == _undefined || parent == null
            ? _instance.parent
            : (parent as Query$ledgerRecordDetail$ledgerDetail$ledger$parent),
        parentNote: parentNote == _undefined
            ? _instance.parentNote
            : (parentNote as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes>
      get parent {
    final local$parent = _instance.parent;
    return CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
        local$parent, (e) => call(parent: e));
  }
}

class _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes>
    implements CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger<TRes> {
  _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? description,
    DateTime? enteredAt,
    int? reward,
    Query$ledgerRecordDetail$ledgerDetail$ledger$parent? parent,
    String? parentNote,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes>
      get parent =>
          CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent.stub(
              _res);
}

class Query$ledgerRecordDetail$ledgerDetail$ledger$parent {
  Query$ledgerRecordDetail$ledgerDetail$ledger$parent({
    required this.name,
    this.pictureUrl,
    required this.$__typename,
  });

  factory Query$ledgerRecordDetail$ledgerDetail$ledger$parent.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pictureUrl = json['pictureUrl'];
    final l$$__typename = json['__typename'];
    return Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
      name: (l$name as String),
      pictureUrl: (l$pictureUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String? pictureUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$name = name;
    final l$pictureUrl = pictureUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    if (!(other is Query$ledgerRecordDetail$ledgerDetail$ledger$parent) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ledgerRecordDetail$ledgerDetail$ledger$parent
    on Query$ledgerRecordDetail$ledgerDetail$ledger$parent {
  CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<
          Query$ledgerRecordDetail$ledgerDetail$ledger$parent>
      get copyWith =>
          CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<
    TRes> {
  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
    Query$ledgerRecordDetail$ledgerDetail$ledger$parent instance,
    TRes Function(Query$ledgerRecordDetail$ledgerDetail$ledger$parent) then,
  ) = _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent;

  factory CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent;

  TRes call({
    String? name,
    String? pictureUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes>
    implements
        CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes> {
  _CopyWithImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
    this._instance,
    this._then,
  );

  final Query$ledgerRecordDetail$ledgerDetail$ledger$parent _instance;

  final TRes Function(Query$ledgerRecordDetail$ledgerDetail$ledger$parent)
      _then;

  static const _undefined = {};

  TRes call({
    Object? name = _undefined,
    Object? pictureUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
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

class _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<
        TRes>
    implements
        CopyWith$Query$ledgerRecordDetail$ledgerDetail$ledger$parent<TRes> {
  _CopyWithStubImpl$Query$ledgerRecordDetail$ledgerDetail$ledger$parent(
      this._res);

  TRes _res;

  call({
    String? name,
    String? pictureUrl,
    String? $__typename,
  }) =>
      _res;
}
