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

enum PlatformApp implements _i1.SerializableModel {
  backoffice_web,
  shooter_mobile,
  club_manager;

  static PlatformApp fromJson(String name) {
    switch (name) {
      case 'backoffice_web':
        return PlatformApp.backoffice_web;
      case 'shooter_mobile':
        return PlatformApp.shooter_mobile;
      case 'club_manager':
        return PlatformApp.club_manager;
      default:
        throw ArgumentError(
          'Value "$name" cannot be converted to "PlatformApp"',
        );
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
