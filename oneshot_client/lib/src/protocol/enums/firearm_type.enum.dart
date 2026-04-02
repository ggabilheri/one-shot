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

enum FirearmType implements _i1.SerializableModel {
  pistol,
  revolver,
  rifle,
  carbine,
  shotgun,
  machine_gun,
  submachine_gun,
  air_pistol,
  air_rifle;

  static FirearmType fromJson(String name) {
    switch (name) {
      case 'pistol':
        return FirearmType.pistol;
      case 'revolver':
        return FirearmType.revolver;
      case 'rifle':
        return FirearmType.rifle;
      case 'carbine':
        return FirearmType.carbine;
      case 'shotgun':
        return FirearmType.shotgun;
      case 'machine_gun':
        return FirearmType.machine_gun;
      case 'submachine_gun':
        return FirearmType.submachine_gun;
      case 'air_pistol':
        return FirearmType.air_pistol;
      case 'air_rifle':
        return FirearmType.air_rifle;
      default:
        throw ArgumentError(
          'Value "$name" cannot be converted to "FirearmType"',
        );
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
