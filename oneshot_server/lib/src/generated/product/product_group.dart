/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_null_comparison

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:oneshot_server/src/generated/protocol.dart' as _iwflrbqm;
import 'package:serverpod/serverpod.dart' as _is;
import '../common/user_profile.dart' as _izifjpv2;

abstract class ProductGroup
    implements _is.TableRow<_is.UuidValue>, _is.ProtocolSerialization {
  ProductGroup._({
    _is.UuidValue? id,
    required this.name,
    this.description,
    required this.originModule,
    this.ownerId,
    this.owner,
  }) : id = id ?? const _is.Uuid().v4obj();

  factory ProductGroup({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
  }) = _ProductGroupImpl;

  factory ProductGroup.fromJson(Map<String, dynamic> jsonSerialization) {
    return ProductGroup(
      id: jsonSerialization['id'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      originModule: jsonSerialization['originModule'] as String,
      ownerId: jsonSerialization['ownerId'] == null
          ? null
          : _is.UuidValueJsonExtension.fromJson(jsonSerialization['ownerId']),
      owner: jsonSerialization['owner'] == null
          ? null
          : _iwflrbqm.Protocol().deserialize<_izifjpv2.UserProfile>(
              jsonSerialization['owner'],
            ),
    );
  }

  static final t = ProductGroupTable();

  static const db = ProductGroupRepository._();

  @override
  _is.UuidValue id;

  String name;

  String? description;

  String originModule;

  _is.UuidValue? ownerId;

  _izifjpv2.UserProfile? owner;

  @override
  _is.Table<_is.UuidValue> get table => t;

  /// Returns a shallow copy of this [ProductGroup]
  /// with some or all fields replaced by the given arguments.
  @_is.useResult
  ProductGroup copyWith({
    _is.UuidValue? id,
    String? name,
    String? description,
    String? originModule,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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

  static ProductGroupInclude include({_izifjpv2.UserProfileInclude? owner}) {
    return ProductGroupInclude._(owner: owner);
  }

  static ProductGroupIncludeList includeList({
    _is.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    ProductGroupInclude? include,
  }) {
    return ProductGroupIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _is.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductGroupImpl extends ProductGroup {
  _ProductGroupImpl({
    _is.UuidValue? id,
    required String name,
    String? description,
    required String originModule,
    _is.UuidValue? ownerId,
    _izifjpv2.UserProfile? owner,
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
  @_is.useResult
  @override
  ProductGroup copyWith({
    _is.UuidValue? id,
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
      ownerId: ownerId is _is.UuidValue? ? ownerId : this.ownerId,
      owner: owner is _izifjpv2.UserProfile? ? owner : this.owner?.copyWith(),
    );
  }
}

class ProductGroupUpdateTable extends _is.UpdateTable<ProductGroupTable> {
  ProductGroupUpdateTable(super.table);

  _is.ColumnValue<String, String> name(String value) =>
      _is.ColumnValue(table.name, value);

  _is.ColumnValue<String, String> description(String? value) =>
      _is.ColumnValue(table.description, value);

  _is.ColumnValue<String, String> originModule(String value) =>
      _is.ColumnValue(table.originModule, value);

  _is.ColumnValue<_is.UuidValue, _is.UuidValue> ownerId(_is.UuidValue? value) =>
      _is.ColumnValue(table.ownerId, value);
}

class ProductGroupTable extends _is.Table<_is.UuidValue> {
  ProductGroupTable({super.tableRelation})
    : super(tableName: 'product_groups') {
    updateTable = ProductGroupUpdateTable(this);
    name = _is.ColumnString('name', this);
    description = _is.ColumnString('description', this);
    originModule = _is.ColumnString('originModule', this);
    ownerId = _is.ColumnUuid('ownerId', this);
  }

  late final ProductGroupUpdateTable updateTable;

  late final _is.ColumnString name;

  late final _is.ColumnString description;

  late final _is.ColumnString originModule;

  late final _is.ColumnUuid ownerId;

  _izifjpv2.UserProfileTable? _owner;

  _izifjpv2.UserProfileTable get owner {
    if (_owner != null) return _owner!;
    _owner = _is.createRelationTable(
      relationFieldName: 'owner',
      field: ProductGroup.t.ownerId,
      foreignField: _izifjpv2.UserProfile.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _izifjpv2.UserProfileTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  @override
  List<_is.Column> get columns => [
    id,
    name,
    description,
    originModule,
    ownerId,
  ];

  @override
  _is.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    return null;
  }
}

class ProductGroupInclude extends _is.IncludeObject {
  ProductGroupInclude._({_izifjpv2.UserProfileInclude? owner}) {
    _owner = owner;
  }

  _izifjpv2.UserProfileInclude? _owner;

  @override
  Map<String, _is.Include?> get includes => {'owner': _owner};

  @override
  _is.Table<_is.UuidValue> get table => ProductGroup.t;
}

class ProductGroupIncludeList extends _is.IncludeList {
  ProductGroupIncludeList._({
    _is.WhereExpressionBuilder<ProductGroupTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ProductGroup.t);
  }

  @override
  Map<String, _is.Include?> get includes => include?.includes ?? {};

  @override
  _is.Table<_is.UuidValue> get table => ProductGroup.t;
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    _is.Transaction? transaction,
    ProductGroupInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<ProductGroup>(
      where: where?.call(ProductGroup.t),
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
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
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ProductGroupTable>? where,
    int? offset,
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    _is.Transaction? transaction,
    ProductGroupInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<ProductGroup>(
      where: where?.call(ProductGroup.t),
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [ProductGroup] by its [id] or null if no such row exists.
  Future<ProductGroup?> findById(
    _is.DatabaseSession session,
    _is.UuidValue id, {
    _is.Transaction? transaction,
    ProductGroupInclude? include,
    _is.LockMode? lockMode,
    _is.LockBehavior? lockBehavior,
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
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> insert(
    _is.DatabaseSession session,
    List<ProductGroup> rows, {
    _is.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<ProductGroup>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [ProductGroup] and returns the inserted row.
  ///
  /// The returned [ProductGroup] will have its `id` field set.
  Future<ProductGroup> insertRow(
    _is.DatabaseSession session,
    ProductGroup row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.insertRow<ProductGroup>(row, transaction: transaction);
  }

  /// Upserts all [ProductGroup]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [ProductGroup]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> upsert(
    _is.DatabaseSession session,
    List<ProductGroup> rows, {
    required _is.ColumnSelections<ProductGroupTable> conflictColumns,
    _is.ColumnSelections<ProductGroupTable>? updateColumns,
    _is.WhereExpressionBuilder<ProductGroupTable>? updateWhere,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<ProductGroup>(
      rows,
      conflictColumns: conflictColumns(ProductGroup.t),
      updateColumns: updateColumns?.call(ProductGroup.t),
      updateWhere: updateWhere?.call(ProductGroup.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [ProductGroup] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [ProductGroup] will have its `id` field set.
  Future<ProductGroup?> upsertRow(
    _is.DatabaseSession session,
    ProductGroup row, {
    required _is.ColumnSelections<ProductGroupTable> conflictColumns,
    _is.ColumnSelections<ProductGroupTable>? updateColumns,
    _is.WhereExpressionBuilder<ProductGroupTable>? updateWhere,
    _is.Transaction? transaction,
  }) async {
    return session.db.upsertRow<ProductGroup>(
      row,
      conflictColumns: conflictColumns(ProductGroup.t),
      updateColumns: updateColumns?.call(ProductGroup.t),
      updateWhere: updateWhere?.call(ProductGroup.t),
      transaction: transaction,
    );
  }

  /// Updates all [ProductGroup]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> update(
    _is.DatabaseSession session,
    List<ProductGroup> rows, {
    _is.ColumnSelections<ProductGroupTable>? columns,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<ProductGroup>(
      rows,
      columns: columns?.call(ProductGroup.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [ProductGroup]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ProductGroup> updateRow(
    _is.DatabaseSession session,
    ProductGroup row, {
    _is.ColumnSelections<ProductGroupTable>? columns,
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    _is.UuidValue id, {
    required _is.ColumnValueListBuilder<ProductGroupUpdateTable> columnValues,
    _is.Transaction? transaction,
  }) async {
    return session.db.updateById<ProductGroup>(
      id,
      columnValues: columnValues(ProductGroup.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ProductGroup]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> updateWhere(
    _is.DatabaseSession session, {
    required _is.ColumnValueListBuilder<ProductGroupUpdateTable> columnValues,
    required _is.WhereExpressionBuilder<ProductGroupTable> where,
    int? limit,
    int? offset,
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<ProductGroup>(
      columnValues: columnValues(ProductGroup.t.updateTable),
      where: where(ProductGroup.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [ProductGroup]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> delete(
    _is.DatabaseSession session,
    List<ProductGroup> rows, {
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<ProductGroup>(
      rows,
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [ProductGroup].
  Future<ProductGroup> deleteRow(
    _is.DatabaseSession session,
    ProductGroup row, {
    _is.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ProductGroup>(row, transaction: transaction);
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<ProductGroup>> deleteWhere(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ProductGroupTable> where,
    _is.OrderByBuilder<ProductGroupTable>? orderBy,
    _is.OrderByListBuilder<ProductGroupTable>? orderByList,
    _is.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<ProductGroup>(
      where: where(ProductGroup.t),
      orderBy: orderBy?.call(ProductGroup.t),
      orderByList: orderByList?.call(ProductGroup.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _is.DatabaseSession session, {
    _is.WhereExpressionBuilder<ProductGroupTable>? where,
    int? limit,
    _is.Transaction? transaction,
  }) async {
    return session.db.count<ProductGroup>(
      where: where?.call(ProductGroup.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [ProductGroup] rows matching the [where] expression.
  Future<void> lockRows(
    _is.DatabaseSession session, {
    required _is.WhereExpressionBuilder<ProductGroupTable> where,
    required _is.LockMode lockMode,
    required _is.Transaction transaction,
    _is.LockBehavior lockBehavior = _is.LockBehavior.wait,
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
    _is.DatabaseSession session,
    ProductGroup productGroup,
    _izifjpv2.UserProfile owner, {
    _is.Transaction? transaction,
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
    _is.DatabaseSession session,
    ProductGroup productGroup, {
    _is.Transaction? transaction,
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
