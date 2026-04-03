import 'package:flutter/material.dart';
import 'package:oneshot_client/oneshot_client.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';
import 'package:backoffice_web/src/ui/pages/clubs/clubs_viewmodel.dart';
import 'package:serverpod_client/serverpod_client.dart'; // Para Uuid

class ClubFormDialog extends StatefulWidget {
  final IClubsViewmodel vm;
  final Club? club; // Será passado null no 'Novo', e a instancia no 'Edit'

  const ClubFormDialog({
    super.key,
    required this.vm,
    this.club,
  });

  @override
  State<ClubFormDialog> createState() => _ClubFormDialogState();
}

class _ClubFormDialogState extends State<ClubFormDialog> {
  late TextEditingController _nameController;
  late TextEditingController _cnpjController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;

  bool _isSaving = false;

  bool get isEditing => widget.club != null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.club?.name ?? '');
    _cnpjController = TextEditingController(text: widget.club?.cnpj ?? '');
    _phoneController = TextEditingController(text: widget.club?.phoneNumber ?? '');
    _emailController = TextEditingController(text: widget.club?.email ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cnpjController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _isSaving = true);
    
    try {
      final clubData = Club(
        id: isEditing ? widget.club!.id : const Uuid().v4obj(),
        name: _nameController.text.trim(),
        cnpj: _cnpjController.text.trim(),
        phoneNumber: _phoneController.text.trim(),
        email: _emailController.text.trim(),
        active: widget.club?.active ?? true, 
      );

      await widget.vm.saveClub(clubData, isEditing: isEditing);

      if (mounted) {
        Navigator.of(context).pop();
      }
    } finally {
      if (mounted) {
        setState(() => _isSaving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
         color: Colors.transparent,
         child: Container(
            width: 500,
            decoration: BoxDecoration(
              color: DSTokens.surface,
              border: Border.all(color: DSTokens.surfaceContainerHigh),
              boxShadow: [
                BoxShadow(
                   color: Colors.black.withOpacity(0.5),
                   blurRadius: 20,
                   offset: const Offset(0, 10),
                )
              ]
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 // Header
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                   decoration: const BoxDecoration(
                     border: Border(bottom: BorderSide(color: DSTokens.surfaceContainerHigh)),
                     color: DSTokens.background, 
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                         isEditing ? 'EDITAR CLUBE' : 'NOVO CLUBE', 
                         style: DSTokens.headline.copyWith(fontSize: 18)
                       ),
                       MouseRegion(
                         cursor: SystemMouseCursors.click,
                         child: GestureDetector(
                           onTap: () => Navigator.of(context).pop(),
                           child: const Icon(Icons.close, color: DSTokens.outline),
                         ),
                       )
                     ],
                   ),
                 ),
                 
                 // Body Fields
                 Padding(
                   padding: const EdgeInsets.all(24.0),
                   child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         _buildInputField('NOME DA ENTIDADE', 'Ex: Clube de Tiro ...', _nameController),
                         const SizedBox(height: DSTokens.spacingMd),
                         Row(
                           children: [
                             Expanded(child: _buildInputField('CNPJ', '00.000.000/0000-00', _cnpjController)),
                             const SizedBox(width: DSTokens.spacingMd),
                             Expanded(child: _buildInputField('TELEFONE', '+55 ...', _phoneController)),
                           ],
                         ),
                         const SizedBox(height: DSTokens.spacingMd),
                         _buildInputField('EMAIL DE CONTATO', 'admin@clube.com', _emailController),
                      ],
                   ),
                 ),

                 // Footer Actions
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                   decoration: const BoxDecoration(
                     border: Border(top: BorderSide(color: DSTokens.surfaceContainerHigh)),
                   ),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                        TextButton(
                           onPressed: _isSaving ? null : () => Navigator.of(context).pop(),
                           child: Text('CANCELAR', style: DSTokens.label.copyWith(color: DSTokens.outline)),
                        ),
                        const SizedBox(width: DSTokens.spacingMd),
                        ElevatedButton(
                           onPressed: _isSaving ? null : _save,
                           style: ElevatedButton.styleFrom(
                              backgroundColor: DSTokens.primary,
                              foregroundColor: DSTokens.onPrimary,
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                           ),
                           child: _isSaving
                               ? const SizedBox(
                                   width: 16, 
                                   height: 16, 
                                   child: CircularProgressIndicator(color: DSTokens.onPrimary, strokeWidth: 2)
                                 )
                               : Text('SALVAR REGISTRO', style: DSTokens.label.copyWith(color: DSTokens.onPrimary, fontWeight: FontWeight.bold)),
                        ),
                     ],
                   ),
                 )
              ],
            ),
         )
      ),
    );
  }

  Widget _buildInputField(String label, String hint, TextEditingController controller) {
     return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: DSTokens.label),
          const SizedBox(height: 8),
          Container(
             height: 48,
             padding: const EdgeInsets.symmetric(horizontal: 16),
             decoration: BoxDecoration(
                color: DSTokens.background,
                border: Border.all(color: DSTokens.surfaceContainerHigh),
             ),
             child: TextField(
                controller: controller,
                style: DSTokens.body.copyWith(color: DSTokens.highlight),
                decoration: InputDecoration(
                   border: InputBorder.none,
                   hintText: hint,
                   hintStyle: DSTokens.body.copyWith(color: DSTokens.outline),
                ),
             ),
          ),
        ],
     );
  }
}
