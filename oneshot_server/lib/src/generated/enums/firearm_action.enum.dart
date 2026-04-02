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
import 'package:serverpod/serverpod.dart' as _i1;

enum FirearmAction implements _i1.SerializableModel {
  singleAction,
  doubleAction,
  boltAction,
  semiAutomatic,
  automatic,
  pumpAction,
  leverAction,
  breakAction;

  static FirearmAction fromJson(String name) {
    switch (name) {
      case 'singleAction':
        return FirearmAction.singleAction;
      case 'doubleAction':
        return FirearmAction.doubleAction;
      case 'boltAction':
        return FirearmAction.boltAction;
      case 'semiAutomatic':
        return FirearmAction.semiAutomatic;
      case 'automatic':
        return FirearmAction.automatic;
      case 'pumpAction':
        return FirearmAction.pumpAction;
      case 'leverAction':
        return FirearmAction.leverAction;
      case 'breakAction':
        return FirearmAction.breakAction;
      default:
        throw ArgumentError(
          'Value "$name" cannot be converted to "FirearmAction"',
        );
    }
  }

  @override
  String toJson() => name;

  @override
  String toString() => name;
}
