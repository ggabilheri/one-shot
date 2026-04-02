import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:oneshot_flutter/src/core/viewmodel_state.dart';
import 'package:oneshot_flutter/src/core/utils/i18n.dart';
import 'package:oneshot_flutter/src/ui/widgets/ds_button.dart';
import 'package:oneshot_flutter/src/ui/widgets/ds_tokens.dart';
import 'home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ViewmodelState<HomePage, IHomeViewmodel> {
  // Mock do ID do usuário logado para MVP
  final String _mockUserId = '00000000-0000-0000-0000-000000000000';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSTokens.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "OneShot".toUpperCase(),
          style: DSTokens.headline.copyWith(
            letterSpacing: 2,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Operação Alpha".toUpperCase(),
              style: DSTokens.label.copyWith(
                color: DSTokens.primary,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Bem-vindo, Atirador",
              style: DSTokens.headline.copyWith(fontSize: 28),
            ),
            const SizedBox(height: 8),
            Text(
              "Gerencie seu perfil e acervo com precisão balística.",
              style: DSTokens.body.copyWith(color: DSTokens.outline),
            ),
            const SizedBox(height: 40),
            _ActionCard(
              title: "profile.title".tr(),
              subtitle: "Dados pessoais e documentos",
              icon: Icons.person_outline,
              onTap: () => QR.to('/profile'),
            ),
            const SizedBox(height: 16),
            _ActionCard(
              title: "firearm.list.title".tr(),
              subtitle: "Controle de armas e registros",
              icon: Icons.shield_outlined,
              onTap: () => QR.to('/firearms/$_mockUserId'),
            ),
            const SizedBox(height: 16),
            _ActionCard(
              title: "accessory.list.title".tr(),
              subtitle: "Ópticos e supressores",
              icon: Icons.extension_outlined,
              onTap: () => QR.to('/accessories/$_mockUserId'),
            ),
            const SizedBox(height: 16),
            _ActionCard(
              title: "Documentos",
              subtitle: "Certidões e autorizações",
              icon: Icons.description_outlined,
              onTap: () => QR.to('/documents/$_mockUserId'),
            ),
            const SizedBox(height: 48),
            DSButton(
              label: "Encerrar Sessão",
              onPressed: () {}, // Logout
              type: DSButtonType.outline,
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const _ActionCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(DSTokens.borderRadius),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: DSTokens.surface,
          borderRadius: BorderRadius.circular(DSTokens.borderRadius),
          border: Border.all(color: DSTokens.outline.withOpacity(0.05)),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0C0E10),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: DSTokens.primary, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: DSTokens.headline.copyWith(fontSize: 16),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: DSTokens.label.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, color: DSTokens.primary.withOpacity(0.3), size: 16),
          ],
        ),
      ),
    );
  }
}
