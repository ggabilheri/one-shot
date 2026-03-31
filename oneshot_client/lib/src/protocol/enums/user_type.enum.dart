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

enum UserType implements _i1.SerializableModel {
  shooter,
  gunsmith,
  admin,
  psychologist,
  instructor,
  user;

  static UserType fromJson(String name) {
    switch (name) {
      case 'shooter':
        return UserType.shooter;
      case 'gunsmith':
        return UserType.gunsmith;
      case 'admin':
        return UserType.admin;
      case 'psychologist':
        return UserType.psychologist;
      case 'instructor':
        return UserType.instructor;
      case 'user':
        return UserType.user;
      default:
        return UserType.user;
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
