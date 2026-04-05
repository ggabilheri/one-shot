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
import '../product/product_group.dart' as _i2;
import 'package:oneshot_server/src/generated/protocol.dart' as _i3;

abstract class Product
    implements _i1.TableRow<_i1.UuidValue>, _i1.ProtocolSerialization {
  Product._({
    _i1.UuidValue? id,
    required this.code,
    required this.description,
    required this.unit,
    required this.unitPrice,
    required this.originModule,
    required this.groupId,
    this.group,
  }) : id = id ?? const _i1.Uuid().v4obj();

  factory Product({
    _i1.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _i1.UuidValue groupId,
    _i2.ProductGroup? group,
  }) = _ProductImpl;

  factory Product.fromJson(Map<String, dynamic> jsonSerialization) {
    return Product(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      code: jsonSerialization['code'] as String,
      description: jsonSerialization['description'] as String,
      unit: jsonSerialization['unit'] as String,
      unitPrice: (jsonSerialization['unitPrice'] as num).toDouble(),
      originModule: jsonSerialization['originModule'] as String,
      groupId: _i1.UuidValueJsonExtension.fromJson(
        jsonSerialization['groupId'],
      ),
      group: jsonSerialization['group'] == null
          ? null
          : _i3.Protocol().deserialize<_i2.ProductGroup>(
              jsonSerialization['group'],
            ),
    );
  }

  static final t = ProductTable();

  static const db = ProductRepository._();

  @override
  _i1.UuidValue id;

  String code;

  String description;

  String unit;

  double unitPrice;

  String originModule;

  _i1.UuidValue groupId;

  _i2.ProductGroup? group;

  @override
  _i1.Table<_i1.UuidValue> get table => t;

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Product copyWith({
    _i1.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _i1.UuidValue? groupId,
    _i2.ProductGroup? group,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Product',
      'id': id.toJson(),
      'code': code,
      'description': description,
      'unit': unit,
      'unitPrice': unitPrice,
      'originModule': originModule,
      'groupId': groupId.toJson(),
      if (group != null) 'group': group?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Product',
      'id': id.toJson(),
      'code': code,
      'description': description,
      'unit': unit,
      'unitPrice': unitPrice,
      'originModule': originModule,
      'groupId': groupId.toJson(),
      if (group != null) 'group': group?.toJsonForProtocol(),
    };
  }

  static ProductInclude include({_i2.ProductGroupInclude? group}) {
    return ProductInclude._(group: group);
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    _i1.UuidValue? id,
    required String code,
    required String description,
    required String unit,
    required double unitPrice,
    required String originModule,
    required _i1.UuidValue groupId,
    _i2.ProductGroup? group,
  }) : super._(
         id: id,
         code: code,
         description: description,
         unit: unit,
         unitPrice: unitPrice,
         originModule: originModule,
         groupId: groupId,
         group: group,
       );

  /// Returns a shallow copy of this [Product]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Product copyWith({
    _i1.UuidValue? id,
    String? code,
    String? description,
    String? unit,
    double? unitPrice,
    String? originModule,
    _i1.UuidValue? groupId,
    Object? group = _Undefined,
  }) {
    return Product(
      id: id ?? this.id,
      code: code ?? this.code,
      description: description ?? this.description,
      unit: unit ?? this.unit,
      unitPrice: unitPrice ?? this.unitPrice,
      originModule: originModule ?? this.originModule,
      groupId: groupId ?? this.groupId,
      group: group is _i2.ProductGroup? ? group : this.group?.copyWith(),
    );
  }
}

class ProductUpdateTable extends _i1.UpdateTable<ProductTable> {
  ProductUpdateTable(super.table);

  _i1.ColumnValue<String, String> code(String value) => _i1.ColumnValue(
    table.code,
    value,
  );

  _i1.ColumnValue<String, String> description(String value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> unit(String value) => _i1.ColumnValue(
    table.unit,
    value,
  );

  _i1.ColumnValue<double, double> unitPrice(double value) => _i1.ColumnValue(
    table.unitPrice,
    value,
  );

  _i1.ColumnValue<String, String> originModule(String value) => _i1.ColumnValue(
    table.originModule,
    value,
  );

  _i1.ColumnValue<_i1.UuidValue, _i1.UuidValue> groupId(_i1.UuidValue value) =>
      _i1.ColumnValue(
        table.groupId,
        value,
      );
}

class ProductTable extends _i1.Table<_i1.UuidValue> {
  ProductTable({super.tableRelation}) : super(tableName: 'products') {
    updateTable = ProductUpdateTable(this);
    code = _i1.ColumnString(
      'code',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    unit = _i1.ColumnString(
      'unit',
      this,
    );
    unitPrice = _i1.ColumnDouble(
      'unitPrice',
      this,
    );
    originModule = _i1.ColumnString(
      'originModule',
      this,
    );
    groupId = _i1.ColumnUuid(
      'groupId',
      this,
    );
  }

  late final ProductUpdateTable updateTable;

  late final _i1.ColumnString code;

  late final _i1.ColumnString description;

  late final _i1.ColumnString unit;

  late final _i1.ColumnDouble unitPrice;

  late final _i1.ColumnString originModule;

  late final _i1.ColumnUuid groupId;

  _i2.ProductGroupTable? _group;

  _i2.ProductGroupTable get group {
    if (_group != null) return _group!;
    _group = _i1.createRelationTable(
      relationFieldName: 'group',
      field: Product.t.groupId,
      foreignField: _i2.ProductGroup.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductGroupTable(tableRelation: foreignTableRelation),
    );
    return _group!;
  }

  @override
  List<_i1.Column> get columns => [
    id,
    code,
    description,
    unit,
    unitPrice,
    originModule,
    groupId,
  ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'group') {
      return group;
    }
    return null;
  }
}

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._({_i2.ProductGroupInclude? group}) {
    _group = group;
  }

  _i2.ProductGroupInclude? _group;

  @override
  Map<String, _i1.Include?> get includes => {'group': _group};

  @override
  _i1.Table<_i1.UuidValue> get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<_i1.UuidValue> get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  final attachRow = const ProductAttachRowRepository._();

  /// Returns a list of [Product]s matching the given query parameters.
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
  Future<List<Product>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [Product] matching the given query parameters.
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
  Future<Product?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [Product] by its [id] or null if no such row exists.
  Future<Product?> findById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    _i1.Transaction? transaction,
    ProductInclude? include,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<Product>(
      id,
      transaction: transaction,
      include: include,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [Product]s in the list and returns the inserted rows.
  ///
  /// The returned [Product]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  Future<List<Product>> insert(
    _i1.DatabaseSession session,
    List<Product> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
  }) async {
    return session.db.insert<Product>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
    );
  }

  /// Inserts a single [Product] and returns the inserted row.
  ///
  /// The returned [Product] will have its `id` field set.
  Future<Product> insertRow(
    _i1.DatabaseSession session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Product>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Product]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Product>> update(
    _i1.DatabaseSession session,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Product]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Product> updateRow(
    _i1.DatabaseSession session,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Product] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Product?> updateById(
    _i1.DatabaseSession session,
    _i1.UuidValue id, {
    required _i1.ColumnValueListBuilder<ProductUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Product>(
      id,
      columnValues: columnValues(Product.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Product]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Product>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<ProductUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ProductTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Product>(
      columnValues: columnValues(Product.t.updateTable),
      where: where(Product.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Product]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Product>> delete(
    _i1.DatabaseSession session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Product].
  Future<Product> deleteRow(
    _i1.DatabaseSession session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Product>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Product>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [Product] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<Product>(
      where: where(Product.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}

class ProductAttachRowRepository {
  const ProductAttachRowRepository._();

  /// Creates a relation between the given [Product] and [ProductGroup]
  /// by setting the [Product]'s foreign key `groupId` to refer to the [ProductGroup].
  Future<void> group(
    _i1.DatabaseSession session,
    Product product,
    _i2.ProductGroup group, {
    _i1.Transaction? transaction,
  }) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (group.id == null) {
      throw ArgumentError.notNull('group.id');
    }

    var $product = product.copyWith(groupId: group.id);
    await session.db.updateRow<Product>(
      $product,
      columns: [Product.t.groupId],
      transaction: transaction,
    );
  }
}
