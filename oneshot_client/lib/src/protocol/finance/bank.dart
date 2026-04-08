/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Bank implements _i1.SerializableModel {
  Bank._({
    required this.name,
    required this.code,
    required this.fullName,
  });

  factory Bank({
    required String name,
    required int code,
    required String fullName,
  }) = _BankImpl;

  factory Bank.fromJson(Map<String, dynamic> jsonSerialization) {
    return Bank(
      name: jsonSerialization['name'] as String,
      code: jsonSerialization['code'] as int,
      fullName: jsonSerialization['fullName'] as String,
    );
  }

  String name;

  int code;

  String fullName;

  /// Returns a shallow copy of this [Bank]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Bank copyWith({
    String? name,
    int? code,
    String? fullName,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Bank',
      'name': name,
      'code': code,
      'fullName': fullName,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _BankImpl extends Bank {
  _BankImpl({
    required String name,
    required int code,
    required String fullName,
  }) : super._(
         name: name,
         code: code,
         fullName: fullName,
       );

  /// Returns a shallow copy of this [Bank]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Bank copyWith({
    String? name,
    int? code,
    String? fullName,
  }) {
    return Bank(
      name: name ?? this.name,
      code: code ?? this.code,
      fullName: fullName ?? this.fullName,
    );
  }
}
