/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../common/user_profile.dart' as _i2;
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class ProductGroup
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  ProductGroup._({
    _i1.UuidValue? id,
    required this.name,
    this.description,
    required this.originModule,
    this.ownerId,
    this.owner,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory ProductGroup({
    _i1.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  }) = _ProductGroupImpl;

  factory ProductGroup.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductGroup(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      originModule: jsonSerialization['originModule'] as String,
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.UserProfile>(
              jsonSerialization['owner'],
            ),
    );
  }

  static final t = ProductGroupTable();

  static const db = ProductGroupRepository._();

  @override
  _i1.UuidValue id;

  String name;

  String? description;

  String originModule;

  _i1.UuidValue? ownerId;

  _i2.UserProfile? owner;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ProductGroup copyWith({
    _i1.UuidValue? id,
    String? name,
    String? description,
    String? originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ProductGroup',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'originModule': originModule,
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ProductGroup',
      'id': id.toJson(),
      'name': name,
      if (description != null) 'description': description,
      'originModule': originModule,
      if (ownerId != null) 'ownerId': ownerId?.toJson(),
      if (owner != null) 'owner': owner?.toJsonForProtocol(),
    };
  }

  static ProductGroupInclude include({_i2.UserProfileInclude? owner}) {
    return ProductGroupInclude._(owner: owner);
  }

  static ProductGroupIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductGroupTable>? orderByList,
    ProductGroupInclude? include,
  }) {
    return ProductGroupIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductGroup.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ProductGroup.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductGroupImpl extends ProductGroup {
  _ProductGroupImpl({
    _i1.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _i1.UuidValue? ownerId,
    _i2.UserProfile? owner,
  }) : super._(
         id: id,
         name: name,
         description: description,
         originModule: originModule,
         ownerId: ownerId,
         owner: owner,
       );

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ProductGroup copyWith({
    _i1.UuidValue? id,
    String? name,
    Object? description = _Undefined,
    String? originModule,
    Object? ownerId = _Undefined,
    Object? owner = _Undefined,
  }) {
    return ProductGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      originModule: originModule ?? this.originModule,
      ownerId: ownerId is _i1.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _i2.UserProfile? ? owner : this.owner?.copyWith(),
    );
  }
}

class ProductGroupUpdateTable extends _i1.UpdateTable<ProductGroupTable> {
  ProductGroupUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> originModule(String value) => _i1.ColumnValue(
    table.originModule,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> ownerId(_i1.UuidValue? value) =>
      _i1.ColumnValue(
        table.ownerId,
        value,
      );
}

class ProductGroupTable extends _i1.Table<_i1.UuidValue> {
  ProductGroupTable({super.tableRelation})
    : super(tableName: 'product_groups') {
    updateTable = ProductGroupUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    originModule = _i1.ColumnString(
      'originModule',
      this,
    );
    ownerId = _i1.ColumnUuid(
      'ownerId',
      this,
    );
  }

  late final ProductGroupUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString originModule;

  late final _i1.ColumnUuid ownerId;

  _i2.UserProfileTable? _owner;

  _i2.UserProfileTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: ProductGroup.t.ownerId,
      foreignField: _i2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    description,
    originModule,
    ownerId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    return null;
  }
}

class ProductGroupInclude extends _i1.IncludeObject {
  ProductGroupInclude._({_i2.UserProfileInclude? owner}) {
    _owner = owner;
  }

  _i2.UserProfileInclude? _owner;

  @override
  Map<String, _i1.Include?> get includes => {'owner': _owner};

  @override
  _i1.Table<_i1.UuidValue> get table => ProductGroup.t;
}

class ProductGroupIncludeList extends _i1.IncludeList {
  ProductGroupIncludeList._({
    _i1.WhereExpressionBuilder<ProductGroupTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProductGroup.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => ProductGroup.t;
}

class ProductGroupRepository {
  const ProductGroupRepository._();

  final attachRow = const ProductGroupAttachRowRepository._();

  final detachRow = const ProductGroupDetachRowRepository._();

  /// Returns a list of [ProductGroup]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<ProductGroup>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductGroupTable>? orderByList,
    _i1.Transaction? transaction,
    ProductGroupInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ProductGroup>(
      where: where?.call(ProductGroup.t),
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [ProductGroup] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<ProductGroup?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductGroupTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductGroupTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductGroupTable>? orderByList,
    _i1.Transaction? transaction,
    ProductGroupInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ProductGroup>(
      where: where?.call(ProductGroup.t),
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ProductGroup] by its [id] or null if no such row exists.
  Future<ProductGroup?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ProductGroupInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<ProductGroup>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [ProductGroup]s in the list and returns the inserted rows.
  ///
  /// The returned [ProductGroup]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<ProductGroup>> insert(
    _i1.DatabaseSession session,
    List<ProductGroup> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<ProductGroup>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [ProductGroup] and returns the inserted row.
  ///
  /// The returned [ProductGroup] will have its `id` field set.
  Future<ProductGroup> insertRow(
    _i1.DatabaseSession session,
    ProductGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProductGroup>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ProductGroup]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ProductGroup>> update(
    _i1.DatabaseSession session,
    List<ProductGroup> rows, {
    _i1.ColumnSelections<ProductGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ProductGroup>(
      rows,
      columns: columns?.call(ProductGroup.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ProductGroup]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ProductGroup> updateRow(
    _i1.DatabaseSession session,
    ProductGroup row, {
    _i1.ColumnSelections<ProductGroupTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ProductGroup>(
      row,
      columns: columns?.call(ProductGroup.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ProductGroup] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ProductGroup?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ProductGroupUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ProductGroup>(
      id,
      columnValues: columnValues(ProductGroup.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ProductGroup]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ProductGroup>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ProductGroupUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ProductGroupTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductGroupTable>? orderBy,
    _i1.OrderByListBuilder<ProductGroupTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ProductGroup>(
      columnValues: columnValues(ProductGroup.t.updateTable),
      where: where(ProductGroup.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ProductGroup]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ProductGroup>> delete(
    _i1.DatabaseSession session,
    List<ProductGroup> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ProductGroup>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ProductGroup].
  Future<ProductGroup> deleteRow(
    _i1.DatabaseSession session,
    ProductGroup row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProductGroup>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ProductGroup>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProductGroupTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ProductGroup>(
      where: where(ProductGroup.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ProductGroup>(
      where: where?.call(ProductGroup.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ProductGroup] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProductGroupTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<ProductGroup>(
      where: where(ProductGroup.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ProductGroupAttachRowRepository {
  const ProductGroupAttachRowRepository._();

  /// Creates a relation between the given [ProductGroup] and [UserProfile]
  /// by setting the [ProductGroup]'s foreign key `ownerId` to refer to the [UserProfile].
  Future<void> owner(
    _i1.DatabaseSession session,
    ProductGroup productGroup,
    _i2.UserProfile owner, {
    _i1.Transaction? transaction,
  }) async {
    if (productGroup.id == null) {
      throw ArgumentError.notNull('productGroup.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $productGroup = productGroup.copyWith(ownerId: owner.id);
    await session.db.updateRow<ProductGroup>(
      $productGroup,
      columns: [ProductGroup.t.ownerId],
      transaction: transaction,
    );
  }
}

class ProductGroupDetachRowRepository {
  const ProductGroupDetachRowRepository._();

  /// Detaches the relation between this [ProductGroup] and the [UserProfile] set in `owner`
  /// by setting the [ProductGroup]'s foreign key `ownerId` to `null`.
  ///
  /// This removes the association between the two models without deleting
  /// the related record.
  Future<void> owner(
    _i1.DatabaseSession session,
    ProductGroup productGroup, {
    _i1.Transaction? transaction,
  }) async {
    if (productGroup.id == null) {
      throw ArgumentError.notNull('productGroup.id');
    }

    var $productGroup = productGroup.copyWith(ownerId: null);
    await session.db.updateRow<ProductGroup>(
      $productGroup,
      columns: [ProductGroup.t.ownerId],
      transaction: transaction,
    );
  }
}
