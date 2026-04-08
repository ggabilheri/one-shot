import 'package:backoffice_web/src/core/extensions/enum_translations.dart';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'role_dropdown_field.dart';

class RolePermissionInsertionSection extends StatefulWidget {
  final Function(RolePermission) onAdd;

  const RolePermissionInsertionSection({super.key, required this.onAdd});

  @override
  State<RolePermissionInsertionSection> createState() =>
      _RolePermissionInsertionSectionState();
}

class _RolePermissionInsertionSectionState
    extends State<RolePermissionInsertionSection> {
  PlatformApp? _selectedPlat;
  AppModule? _selectedMod;
  AccessLevel? _selectedLevel;

  void _add() {
    if (_selectedPlat != null && _selectedLevel != null) {
      widget.onAdd(
        RolePermission(
          platform: _selectedPlat!,
          module: _selectedMod,
          level: _selectedLevel!,
        ),
      );
      setState(() {
        _selectedPlat = null;
        _selectedMod = null;
        _selectedLevel = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: DSTokens.background,
        border: Border.all(color: DSTokens.surfaceContainerHigh),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: RoleDropdownField<PlatformApp>(
              label: 'PLATAFORMA',
              items: PlatformApp.values,
              value: _selectedPlat,
              onChanged: (v) => setState(() => _selectedPlat = v),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RoleDropdownField<AppModule?>(
              label: 'MÓDULO',
              items: [null, ...AppModule.values],
              value: _selectedMod,
              onChanged: (v) => setState(() => _selectedMod = v),
              labelMapper: (v) => v?.label.toUpperCase() ?? 'TODOS',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: RoleDropdownField<AccessLevel>(
              label: 'NÍVEL',
              items: AccessLevel.values,
              value: _selectedLevel,
              onChanged: (v) => setState(() => _selectedLevel = v),
            ),
          ),
          const SizedBox(width: 16),
          ElevatedButton(
            onPressed: _selectedPlat != null && _selectedLevel != null
                ? _add
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: DSTokens.primary,
              foregroundColor: DSTokens.onPrimary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              padding: const EdgeInsets.all(16),
            ),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
