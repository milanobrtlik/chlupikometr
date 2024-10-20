import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$inventory {
  Fragment$inventory({
    required this.id,
    required this.title,
    this.description,
    this.iconData,
    required this.levels,
    required this.$__typename,
  });

  factory Fragment$inventory.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$iconData = json['iconData'];
    final l$levels = json['levels'];
    final l$$__typename = json['__typename'];
    return Fragment$inventory(
      id: (l$id as int),
      title: (l$title as String),
      description: (l$description as String?),
      iconData: (l$iconData as int?),
      levels: (l$levels as List<dynamic>)
          .map((e) => Fragment$level.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? description;

  final int? iconData;

  final List<Fragment$level> levels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$iconData = iconData;
    _resultData['iconData'] = l$iconData;
    final l$levels = levels;
    _resultData['levels'] = l$levels.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$iconData = iconData;
    final l$levels = levels;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$iconData,
      Object.hashAll(l$levels.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$inventory) || runtimeType != other.runtimeType) {
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
    final l$iconData = iconData;
    final lOther$iconData = other.iconData;
    if (l$iconData != lOther$iconData) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$inventory on Fragment$inventory {
  CopyWith$Fragment$inventory<Fragment$inventory> get copyWith =>
      CopyWith$Fragment$inventory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$inventory<TRes> {
  factory CopyWith$Fragment$inventory(
    Fragment$inventory instance,
    TRes Function(Fragment$inventory) then,
  ) = _CopyWithImpl$Fragment$inventory;

  factory CopyWith$Fragment$inventory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$inventory;

  TRes call({
    int? id,
    String? title,
    String? description,
    int? iconData,
    List<Fragment$level>? levels,
    String? $__typename,
  });
  TRes levels(
      Iterable<Fragment$level> Function(
              Iterable<CopyWith$Fragment$level<Fragment$level>>)
          _fn);
}

class _CopyWithImpl$Fragment$inventory<TRes>
    implements CopyWith$Fragment$inventory<TRes> {
  _CopyWithImpl$Fragment$inventory(
    this._instance,
    this._then,
  );

  final Fragment$inventory _instance;

  final TRes Function(Fragment$inventory) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? iconData = _undefined,
    Object? levels = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$inventory(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconData:
            iconData == _undefined ? _instance.iconData : (iconData as int?),
        levels: levels == _undefined || levels == null
            ? _instance.levels
            : (levels as List<Fragment$level>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes levels(
          Iterable<Fragment$level> Function(
                  Iterable<CopyWith$Fragment$level<Fragment$level>>)
              _fn) =>
      call(
          levels: _fn(_instance.levels.map((e) => CopyWith$Fragment$level(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$inventory<TRes>
    implements CopyWith$Fragment$inventory<TRes> {
  _CopyWithStubImpl$Fragment$inventory(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? description,
    int? iconData,
    List<Fragment$level>? levels,
    String? $__typename,
  }) =>
      _res;
  levels(_fn) => _res;
}

const fragmentDefinitioninventory = FragmentDefinitionNode(
  name: NameNode(value: 'inventory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Inventory'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'iconData'),
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
        FragmentSpreadNode(
          name: NameNode(value: 'level'),
          directives: [],
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
);
const documentNodeFragmentinventory = DocumentNode(definitions: [
  fragmentDefinitioninventory,
  fragmentDefinitionlevel,
]);

extension ClientExtension$Fragment$inventory on graphql.GraphQLClient {
  void writeFragment$inventory({
    required Fragment$inventory data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'inventory',
            document: documentNodeFragmentinventory,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$inventory? readFragment$inventory({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'inventory',
          document: documentNodeFragmentinventory,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$inventory.fromJson(result);
  }
}

class Fragment$level {
  Fragment$level({
    required this.id,
    required this.title,
    this.description,
    required this.reward,
    required this.$__typename,
  });

  factory Fragment$level.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$reward = json['reward'];
    final l$$__typename = json['__typename'];
    return Fragment$level(
      id: (l$id as int),
      title: (l$title as String),
      description: (l$description as String?),
      reward: (l$reward as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String title;

  final String? description;

  final int reward;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$reward = reward;
    _resultData['reward'] = l$reward;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$description = description;
    final l$reward = reward;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$description,
      l$reward,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$level) || runtimeType != other.runtimeType) {
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
    final l$reward = reward;
    final lOther$reward = other.reward;
    if (l$reward != lOther$reward) {
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

extension UtilityExtension$Fragment$level on Fragment$level {
  CopyWith$Fragment$level<Fragment$level> get copyWith =>
      CopyWith$Fragment$level(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$level<TRes> {
  factory CopyWith$Fragment$level(
    Fragment$level instance,
    TRes Function(Fragment$level) then,
  ) = _CopyWithImpl$Fragment$level;

  factory CopyWith$Fragment$level.stub(TRes res) =
      _CopyWithStubImpl$Fragment$level;

  TRes call({
    int? id,
    String? title,
    String? description,
    int? reward,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$level<TRes>
    implements CopyWith$Fragment$level<TRes> {
  _CopyWithImpl$Fragment$level(
    this._instance,
    this._then,
  );

  final Fragment$level _instance;

  final TRes Function(Fragment$level) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? reward = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$level(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        reward: reward == _undefined || reward == null
            ? _instance.reward
            : (reward as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$level<TRes>
    implements CopyWith$Fragment$level<TRes> {
  _CopyWithStubImpl$Fragment$level(this._res);

  TRes _res;

  call({
    int? id,
    String? title,
    String? description,
    int? reward,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionlevel = FragmentDefinitionNode(
  name: NameNode(value: 'level'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'InventoryLevel'),
    isNonNull: false,
  )),
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
      name: NameNode(value: 'reward'),
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
);
const documentNodeFragmentlevel = DocumentNode(definitions: [
  fragmentDefinitionlevel,
]);

extension ClientExtension$Fragment$level on graphql.GraphQLClient {
  void writeFragment$level({
    required Fragment$level data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'level',
            document: documentNodeFragmentlevel,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$level? readFragment$level({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'level',
          document: documentNodeFragmentlevel,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$level.fromJson(result);
  }
}

class Variables$Mutation$inventoryCreate {
  factory Variables$Mutation$inventoryCreate({
    required int familyId,
    required Input$InventoryCreateInput input,
  }) =>
      Variables$Mutation$inventoryCreate._({
        r'familyId': familyId,
        r'input': input,
      });

  Variables$Mutation$inventoryCreate._(this._$data);

  factory Variables$Mutation$inventoryCreate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$input = data['input'];
    result$data['input'] =
        Input$InventoryCreateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$inventoryCreate._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$InventoryCreateInput get input =>
      (_$data['input'] as Input$InventoryCreateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$inventoryCreate<
          Variables$Mutation$inventoryCreate>
      get copyWith => CopyWith$Variables$Mutation$inventoryCreate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$inventoryCreate) ||
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

abstract class CopyWith$Variables$Mutation$inventoryCreate<TRes> {
  factory CopyWith$Variables$Mutation$inventoryCreate(
    Variables$Mutation$inventoryCreate instance,
    TRes Function(Variables$Mutation$inventoryCreate) then,
  ) = _CopyWithImpl$Variables$Mutation$inventoryCreate;

  factory CopyWith$Variables$Mutation$inventoryCreate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$inventoryCreate;

  TRes call({
    int? familyId,
    Input$InventoryCreateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$inventoryCreate<TRes>
    implements CopyWith$Variables$Mutation$inventoryCreate<TRes> {
  _CopyWithImpl$Variables$Mutation$inventoryCreate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$inventoryCreate _instance;

  final TRes Function(Variables$Mutation$inventoryCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$inventoryCreate._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (input != _undefined && input != null)
          'input': (input as Input$InventoryCreateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$inventoryCreate<TRes>
    implements CopyWith$Variables$Mutation$inventoryCreate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$inventoryCreate(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$InventoryCreateInput? input,
  }) =>
      _res;
}

class Mutation$inventoryCreate {
  Mutation$inventoryCreate({
    required this.inventoryCreate,
    required this.$__typename,
  });

  factory Mutation$inventoryCreate.fromJson(Map<String, dynamic> json) {
    final l$inventoryCreate = json['inventoryCreate'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryCreate(
      inventoryCreate: Mutation$inventoryCreate$inventoryCreate.fromJson(
          (l$inventoryCreate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$inventoryCreate$inventoryCreate inventoryCreate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryCreate = inventoryCreate;
    _resultData['inventoryCreate'] = l$inventoryCreate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryCreate = inventoryCreate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventoryCreate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$inventoryCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryCreate = inventoryCreate;
    final lOther$inventoryCreate = other.inventoryCreate;
    if (l$inventoryCreate != lOther$inventoryCreate) {
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

extension UtilityExtension$Mutation$inventoryCreate
    on Mutation$inventoryCreate {
  CopyWith$Mutation$inventoryCreate<Mutation$inventoryCreate> get copyWith =>
      CopyWith$Mutation$inventoryCreate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$inventoryCreate<TRes> {
  factory CopyWith$Mutation$inventoryCreate(
    Mutation$inventoryCreate instance,
    TRes Function(Mutation$inventoryCreate) then,
  ) = _CopyWithImpl$Mutation$inventoryCreate;

  factory CopyWith$Mutation$inventoryCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$inventoryCreate;

  TRes call({
    Mutation$inventoryCreate$inventoryCreate? inventoryCreate,
    String? $__typename,
  });
  CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> get inventoryCreate;
}

class _CopyWithImpl$Mutation$inventoryCreate<TRes>
    implements CopyWith$Mutation$inventoryCreate<TRes> {
  _CopyWithImpl$Mutation$inventoryCreate(
    this._instance,
    this._then,
  );

  final Mutation$inventoryCreate _instance;

  final TRes Function(Mutation$inventoryCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? inventoryCreate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryCreate(
        inventoryCreate:
            inventoryCreate == _undefined || inventoryCreate == null
                ? _instance.inventoryCreate
                : (inventoryCreate as Mutation$inventoryCreate$inventoryCreate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> get inventoryCreate {
    final local$inventoryCreate = _instance.inventoryCreate;
    return CopyWith$Mutation$inventoryCreate$inventoryCreate(
        local$inventoryCreate, (e) => call(inventoryCreate: e));
  }
}

class _CopyWithStubImpl$Mutation$inventoryCreate<TRes>
    implements CopyWith$Mutation$inventoryCreate<TRes> {
  _CopyWithStubImpl$Mutation$inventoryCreate(this._res);

  TRes _res;

  call({
    Mutation$inventoryCreate$inventoryCreate? inventoryCreate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> get inventoryCreate =>
      CopyWith$Mutation$inventoryCreate$inventoryCreate.stub(_res);
}

const documentNodeMutationinventoryCreate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'inventoryCreate'),
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
          name: NameNode(value: 'InventoryCreateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'inventoryCreate'),
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
            name: NameNode(value: 'inventory'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'inventory'),
                directives: [],
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
  fragmentDefinitioninventory,
  fragmentDefinitionlevel,
]);
Mutation$inventoryCreate _parserFn$Mutation$inventoryCreate(
        Map<String, dynamic> data) =>
    Mutation$inventoryCreate.fromJson(data);
typedef OnMutationCompleted$Mutation$inventoryCreate = FutureOr<void> Function(
  dynamic,
  Mutation$inventoryCreate?,
);

class Options$Mutation$inventoryCreate
    extends graphql.MutationOptions<Mutation$inventoryCreate> {
  Options$Mutation$inventoryCreate({
    String? operationName,
    required Variables$Mutation$inventoryCreate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$inventoryCreate? onCompleted,
    graphql.OnMutationUpdate<Mutation$inventoryCreate>? update,
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
                        : _parserFn$Mutation$inventoryCreate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationinventoryCreate,
          parserFn: _parserFn$Mutation$inventoryCreate,
        );

  final OnMutationCompleted$Mutation$inventoryCreate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$inventoryCreate
    extends graphql.WatchQueryOptions<Mutation$inventoryCreate> {
  WatchOptions$Mutation$inventoryCreate({
    String? operationName,
    required Variables$Mutation$inventoryCreate variables,
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
          document: documentNodeMutationinventoryCreate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$inventoryCreate,
        );
}

extension ClientExtension$Mutation$inventoryCreate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$inventoryCreate>> mutate$inventoryCreate(
          Options$Mutation$inventoryCreate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$inventoryCreate>
      watchMutation$inventoryCreate(
              WatchOptions$Mutation$inventoryCreate options) =>
          this.watchMutation(options);
}

class Mutation$inventoryCreate$inventoryCreate {
  Mutation$inventoryCreate$inventoryCreate({
    this.inventory,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$inventoryCreate$inventoryCreate.fromJson(
      Map<String, dynamic> json) {
    final l$inventory = json['inventory'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryCreate$inventoryCreate(
      inventory: l$inventory == null
          ? null
          : Fragment$inventory.fromJson((l$inventory as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$inventoryCreate$inventoryCreate$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$inventory? inventory;

  final List<Mutation$inventoryCreate$inventoryCreate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventory = inventory;
    _resultData['inventory'] = l$inventory?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventory = inventory;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventory,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$inventoryCreate$inventoryCreate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventory = inventory;
    final lOther$inventory = other.inventory;
    if (l$inventory != lOther$inventory) {
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

extension UtilityExtension$Mutation$inventoryCreate$inventoryCreate
    on Mutation$inventoryCreate$inventoryCreate {
  CopyWith$Mutation$inventoryCreate$inventoryCreate<
          Mutation$inventoryCreate$inventoryCreate>
      get copyWith => CopyWith$Mutation$inventoryCreate$inventoryCreate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> {
  factory CopyWith$Mutation$inventoryCreate$inventoryCreate(
    Mutation$inventoryCreate$inventoryCreate instance,
    TRes Function(Mutation$inventoryCreate$inventoryCreate) then,
  ) = _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate;

  factory CopyWith$Mutation$inventoryCreate$inventoryCreate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate;

  TRes call({
    Fragment$inventory? inventory,
    List<Mutation$inventoryCreate$inventoryCreate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$inventory<TRes> get inventory;
  TRes errors(
      Iterable<Mutation$inventoryCreate$inventoryCreate$errors> Function(
              Iterable<
                  CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<
                      Mutation$inventoryCreate$inventoryCreate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate<TRes>
    implements CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> {
  _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate(
    this._instance,
    this._then,
  );

  final Mutation$inventoryCreate$inventoryCreate _instance;

  final TRes Function(Mutation$inventoryCreate$inventoryCreate) _then;

  static const _undefined = {};

  TRes call({
    Object? inventory = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryCreate$inventoryCreate(
        inventory: inventory == _undefined
            ? _instance.inventory
            : (inventory as Fragment$inventory?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$inventoryCreate$inventoryCreate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$inventory<TRes> get inventory {
    final local$inventory = _instance.inventory;
    return local$inventory == null
        ? CopyWith$Fragment$inventory.stub(_then(_instance))
        : CopyWith$Fragment$inventory(
            local$inventory, (e) => call(inventory: e));
  }

  TRes errors(
          Iterable<Mutation$inventoryCreate$inventoryCreate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<
                          Mutation$inventoryCreate$inventoryCreate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map(
              (e) => CopyWith$Mutation$inventoryCreate$inventoryCreate$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate<TRes>
    implements CopyWith$Mutation$inventoryCreate$inventoryCreate<TRes> {
  _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate(this._res);

  TRes _res;

  call({
    Fragment$inventory? inventory,
    List<Mutation$inventoryCreate$inventoryCreate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$inventory<TRes> get inventory =>
      CopyWith$Fragment$inventory.stub(_res);
  errors(_fn) => _res;
}

class Mutation$inventoryCreate$inventoryCreate$errors {
  Mutation$inventoryCreate$inventoryCreate$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$inventoryCreate$inventoryCreate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryCreate$inventoryCreate$errors(
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
    if (!(other is Mutation$inventoryCreate$inventoryCreate$errors) ||
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

extension UtilityExtension$Mutation$inventoryCreate$inventoryCreate$errors
    on Mutation$inventoryCreate$inventoryCreate$errors {
  CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<
          Mutation$inventoryCreate$inventoryCreate$errors>
      get copyWith => CopyWith$Mutation$inventoryCreate$inventoryCreate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<TRes> {
  factory CopyWith$Mutation$inventoryCreate$inventoryCreate$errors(
    Mutation$inventoryCreate$inventoryCreate$errors instance,
    TRes Function(Mutation$inventoryCreate$inventoryCreate$errors) then,
  ) = _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate$errors;

  factory CopyWith$Mutation$inventoryCreate$inventoryCreate$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate$errors<TRes>
    implements CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<TRes> {
  _CopyWithImpl$Mutation$inventoryCreate$inventoryCreate$errors(
    this._instance,
    this._then,
  );

  final Mutation$inventoryCreate$inventoryCreate$errors _instance;

  final TRes Function(Mutation$inventoryCreate$inventoryCreate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryCreate$inventoryCreate$errors(
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

class _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate$errors<TRes>
    implements CopyWith$Mutation$inventoryCreate$inventoryCreate$errors<TRes> {
  _CopyWithStubImpl$Mutation$inventoryCreate$inventoryCreate$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$inventoryUpdate {
  factory Variables$Mutation$inventoryUpdate({
    required int familyId,
    required Input$InventoryUpdateInput input,
    required int inventoryId,
  }) =>
      Variables$Mutation$inventoryUpdate._({
        r'familyId': familyId,
        r'input': input,
        r'inventoryId': inventoryId,
      });

  Variables$Mutation$inventoryUpdate._(this._$data);

  factory Variables$Mutation$inventoryUpdate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$familyId = data['familyId'];
    result$data['familyId'] = (l$familyId as int);
    final l$input = data['input'];
    result$data['input'] =
        Input$InventoryUpdateInput.fromJson((l$input as Map<String, dynamic>));
    final l$inventoryId = data['inventoryId'];
    result$data['inventoryId'] = (l$inventoryId as int);
    return Variables$Mutation$inventoryUpdate._(result$data);
  }

  Map<String, dynamic> _$data;

  int get familyId => (_$data['familyId'] as int);
  Input$InventoryUpdateInput get input =>
      (_$data['input'] as Input$InventoryUpdateInput);
  int get inventoryId => (_$data['inventoryId'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$familyId = familyId;
    result$data['familyId'] = l$familyId;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    final l$inventoryId = inventoryId;
    result$data['inventoryId'] = l$inventoryId;
    return result$data;
  }

  CopyWith$Variables$Mutation$inventoryUpdate<
          Variables$Mutation$inventoryUpdate>
      get copyWith => CopyWith$Variables$Mutation$inventoryUpdate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$inventoryUpdate) ||
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
    final l$inventoryId = inventoryId;
    final lOther$inventoryId = other.inventoryId;
    if (l$inventoryId != lOther$inventoryId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$familyId = familyId;
    final l$input = input;
    final l$inventoryId = inventoryId;
    return Object.hashAll([
      l$familyId,
      l$input,
      l$inventoryId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$inventoryUpdate<TRes> {
  factory CopyWith$Variables$Mutation$inventoryUpdate(
    Variables$Mutation$inventoryUpdate instance,
    TRes Function(Variables$Mutation$inventoryUpdate) then,
  ) = _CopyWithImpl$Variables$Mutation$inventoryUpdate;

  factory CopyWith$Variables$Mutation$inventoryUpdate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$inventoryUpdate;

  TRes call({
    int? familyId,
    Input$InventoryUpdateInput? input,
    int? inventoryId,
  });
}

class _CopyWithImpl$Variables$Mutation$inventoryUpdate<TRes>
    implements CopyWith$Variables$Mutation$inventoryUpdate<TRes> {
  _CopyWithImpl$Variables$Mutation$inventoryUpdate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$inventoryUpdate _instance;

  final TRes Function(Variables$Mutation$inventoryUpdate) _then;

  static const _undefined = {};

  TRes call({
    Object? familyId = _undefined,
    Object? input = _undefined,
    Object? inventoryId = _undefined,
  }) =>
      _then(Variables$Mutation$inventoryUpdate._({
        ..._instance._$data,
        if (familyId != _undefined && familyId != null)
          'familyId': (familyId as int),
        if (input != _undefined && input != null)
          'input': (input as Input$InventoryUpdateInput),
        if (inventoryId != _undefined && inventoryId != null)
          'inventoryId': (inventoryId as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$inventoryUpdate<TRes>
    implements CopyWith$Variables$Mutation$inventoryUpdate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$inventoryUpdate(this._res);

  TRes _res;

  call({
    int? familyId,
    Input$InventoryUpdateInput? input,
    int? inventoryId,
  }) =>
      _res;
}

class Mutation$inventoryUpdate {
  Mutation$inventoryUpdate({
    required this.inventoryUpdate,
    required this.$__typename,
  });

  factory Mutation$inventoryUpdate.fromJson(Map<String, dynamic> json) {
    final l$inventoryUpdate = json['inventoryUpdate'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryUpdate(
      inventoryUpdate: Mutation$inventoryUpdate$inventoryUpdate.fromJson(
          (l$inventoryUpdate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$inventoryUpdate$inventoryUpdate inventoryUpdate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventoryUpdate = inventoryUpdate;
    _resultData['inventoryUpdate'] = l$inventoryUpdate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventoryUpdate = inventoryUpdate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventoryUpdate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$inventoryUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventoryUpdate = inventoryUpdate;
    final lOther$inventoryUpdate = other.inventoryUpdate;
    if (l$inventoryUpdate != lOther$inventoryUpdate) {
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

extension UtilityExtension$Mutation$inventoryUpdate
    on Mutation$inventoryUpdate {
  CopyWith$Mutation$inventoryUpdate<Mutation$inventoryUpdate> get copyWith =>
      CopyWith$Mutation$inventoryUpdate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$inventoryUpdate<TRes> {
  factory CopyWith$Mutation$inventoryUpdate(
    Mutation$inventoryUpdate instance,
    TRes Function(Mutation$inventoryUpdate) then,
  ) = _CopyWithImpl$Mutation$inventoryUpdate;

  factory CopyWith$Mutation$inventoryUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$inventoryUpdate;

  TRes call({
    Mutation$inventoryUpdate$inventoryUpdate? inventoryUpdate,
    String? $__typename,
  });
  CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> get inventoryUpdate;
}

class _CopyWithImpl$Mutation$inventoryUpdate<TRes>
    implements CopyWith$Mutation$inventoryUpdate<TRes> {
  _CopyWithImpl$Mutation$inventoryUpdate(
    this._instance,
    this._then,
  );

  final Mutation$inventoryUpdate _instance;

  final TRes Function(Mutation$inventoryUpdate) _then;

  static const _undefined = {};

  TRes call({
    Object? inventoryUpdate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryUpdate(
        inventoryUpdate:
            inventoryUpdate == _undefined || inventoryUpdate == null
                ? _instance.inventoryUpdate
                : (inventoryUpdate as Mutation$inventoryUpdate$inventoryUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> get inventoryUpdate {
    final local$inventoryUpdate = _instance.inventoryUpdate;
    return CopyWith$Mutation$inventoryUpdate$inventoryUpdate(
        local$inventoryUpdate, (e) => call(inventoryUpdate: e));
  }
}

class _CopyWithStubImpl$Mutation$inventoryUpdate<TRes>
    implements CopyWith$Mutation$inventoryUpdate<TRes> {
  _CopyWithStubImpl$Mutation$inventoryUpdate(this._res);

  TRes _res;

  call({
    Mutation$inventoryUpdate$inventoryUpdate? inventoryUpdate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> get inventoryUpdate =>
      CopyWith$Mutation$inventoryUpdate$inventoryUpdate.stub(_res);
}

const documentNodeMutationinventoryUpdate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'inventoryUpdate'),
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
          name: NameNode(value: 'InventoryUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'inventoryId')),
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
        name: NameNode(value: 'inventoryUpdate'),
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
          ArgumentNode(
            name: NameNode(value: 'inventoryId'),
            value: VariableNode(name: NameNode(value: 'inventoryId')),
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
              FragmentSpreadNode(
                name: NameNode(value: 'inventory'),
                directives: [],
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
  fragmentDefinitioninventory,
  fragmentDefinitionlevel,
]);
Mutation$inventoryUpdate _parserFn$Mutation$inventoryUpdate(
        Map<String, dynamic> data) =>
    Mutation$inventoryUpdate.fromJson(data);
typedef OnMutationCompleted$Mutation$inventoryUpdate = FutureOr<void> Function(
  dynamic,
  Mutation$inventoryUpdate?,
);

class Options$Mutation$inventoryUpdate
    extends graphql.MutationOptions<Mutation$inventoryUpdate> {
  Options$Mutation$inventoryUpdate({
    String? operationName,
    required Variables$Mutation$inventoryUpdate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$inventoryUpdate? onCompleted,
    graphql.OnMutationUpdate<Mutation$inventoryUpdate>? update,
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
                        : _parserFn$Mutation$inventoryUpdate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationinventoryUpdate,
          parserFn: _parserFn$Mutation$inventoryUpdate,
        );

  final OnMutationCompleted$Mutation$inventoryUpdate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$inventoryUpdate
    extends graphql.WatchQueryOptions<Mutation$inventoryUpdate> {
  WatchOptions$Mutation$inventoryUpdate({
    String? operationName,
    required Variables$Mutation$inventoryUpdate variables,
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
          document: documentNodeMutationinventoryUpdate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$inventoryUpdate,
        );
}

extension ClientExtension$Mutation$inventoryUpdate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$inventoryUpdate>> mutate$inventoryUpdate(
          Options$Mutation$inventoryUpdate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$inventoryUpdate>
      watchMutation$inventoryUpdate(
              WatchOptions$Mutation$inventoryUpdate options) =>
          this.watchMutation(options);
}

class Mutation$inventoryUpdate$inventoryUpdate {
  Mutation$inventoryUpdate$inventoryUpdate({
    this.inventory,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$inventoryUpdate$inventoryUpdate.fromJson(
      Map<String, dynamic> json) {
    final l$inventory = json['inventory'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryUpdate$inventoryUpdate(
      inventory: l$inventory == null
          ? null
          : Fragment$inventory.fromJson((l$inventory as Map<String, dynamic>)),
      errors: (l$errors as List<dynamic>)
          .map((e) => Mutation$inventoryUpdate$inventoryUpdate$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$inventory? inventory;

  final List<Mutation$inventoryUpdate$inventoryUpdate$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$inventory = inventory;
    _resultData['inventory'] = l$inventory?.toJson();
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$inventory = inventory;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$inventory,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$inventoryUpdate$inventoryUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$inventory = inventory;
    final lOther$inventory = other.inventory;
    if (l$inventory != lOther$inventory) {
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

extension UtilityExtension$Mutation$inventoryUpdate$inventoryUpdate
    on Mutation$inventoryUpdate$inventoryUpdate {
  CopyWith$Mutation$inventoryUpdate$inventoryUpdate<
          Mutation$inventoryUpdate$inventoryUpdate>
      get copyWith => CopyWith$Mutation$inventoryUpdate$inventoryUpdate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> {
  factory CopyWith$Mutation$inventoryUpdate$inventoryUpdate(
    Mutation$inventoryUpdate$inventoryUpdate instance,
    TRes Function(Mutation$inventoryUpdate$inventoryUpdate) then,
  ) = _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate;

  factory CopyWith$Mutation$inventoryUpdate$inventoryUpdate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate;

  TRes call({
    Fragment$inventory? inventory,
    List<Mutation$inventoryUpdate$inventoryUpdate$errors>? errors,
    String? $__typename,
  });
  CopyWith$Fragment$inventory<TRes> get inventory;
  TRes errors(
      Iterable<Mutation$inventoryUpdate$inventoryUpdate$errors> Function(
              Iterable<
                  CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<
                      Mutation$inventoryUpdate$inventoryUpdate$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate<TRes>
    implements CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> {
  _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate(
    this._instance,
    this._then,
  );

  final Mutation$inventoryUpdate$inventoryUpdate _instance;

  final TRes Function(Mutation$inventoryUpdate$inventoryUpdate) _then;

  static const _undefined = {};

  TRes call({
    Object? inventory = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryUpdate$inventoryUpdate(
        inventory: inventory == _undefined
            ? _instance.inventory
            : (inventory as Fragment$inventory?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$inventoryUpdate$inventoryUpdate$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$inventory<TRes> get inventory {
    final local$inventory = _instance.inventory;
    return local$inventory == null
        ? CopyWith$Fragment$inventory.stub(_then(_instance))
        : CopyWith$Fragment$inventory(
            local$inventory, (e) => call(inventory: e));
  }

  TRes errors(
          Iterable<Mutation$inventoryUpdate$inventoryUpdate$errors> Function(
                  Iterable<
                      CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<
                          Mutation$inventoryUpdate$inventoryUpdate$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map(
              (e) => CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate<TRes>
    implements CopyWith$Mutation$inventoryUpdate$inventoryUpdate<TRes> {
  _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate(this._res);

  TRes _res;

  call({
    Fragment$inventory? inventory,
    List<Mutation$inventoryUpdate$inventoryUpdate$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$inventory<TRes> get inventory =>
      CopyWith$Fragment$inventory.stub(_res);
  errors(_fn) => _res;
}

class Mutation$inventoryUpdate$inventoryUpdate$errors {
  Mutation$inventoryUpdate$inventoryUpdate$errors({
    required this.code,
    required this.message,
    required this.$__typename,
  });

  factory Mutation$inventoryUpdate$inventoryUpdate$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$inventoryUpdate$inventoryUpdate$errors(
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
    if (!(other is Mutation$inventoryUpdate$inventoryUpdate$errors) ||
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

extension UtilityExtension$Mutation$inventoryUpdate$inventoryUpdate$errors
    on Mutation$inventoryUpdate$inventoryUpdate$errors {
  CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<
          Mutation$inventoryUpdate$inventoryUpdate$errors>
      get copyWith => CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<TRes> {
  factory CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors(
    Mutation$inventoryUpdate$inventoryUpdate$errors instance,
    TRes Function(Mutation$inventoryUpdate$inventoryUpdate$errors) then,
  ) = _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate$errors;

  factory CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate$errors<TRes>
    implements CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<TRes> {
  _CopyWithImpl$Mutation$inventoryUpdate$inventoryUpdate$errors(
    this._instance,
    this._then,
  );

  final Mutation$inventoryUpdate$inventoryUpdate$errors _instance;

  final TRes Function(Mutation$inventoryUpdate$inventoryUpdate$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$inventoryUpdate$inventoryUpdate$errors(
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

class _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate$errors<TRes>
    implements CopyWith$Mutation$inventoryUpdate$inventoryUpdate$errors<TRes> {
  _CopyWithStubImpl$Mutation$inventoryUpdate$inventoryUpdate$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
