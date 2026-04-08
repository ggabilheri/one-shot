import 'dart:async';
import 'package:flutter/material.dart';
import 'package:backoffice_web/src/ui/widgets/ds_tokens.dart';

enum DSSnackbarType { error, success, warning, info }

class DSSnackbar {
  static OverlayEntry? _currentEntry;
  static Timer? _timer;

  static void show(
    BuildContext context, {
    required String message,
    DSSnackbarType type = DSSnackbarType.info,
    Duration duration = const Duration(seconds: 5),
  }) {
    final overlay = Overlay.of(context);

    // Remover notificação anterior se existir
    _removeCurrent();

    _currentEntry = OverlayEntry(
      builder: (context) => _DSNotificationWidget(
        message: message,
        type: type,
        duration: duration,
        onDismiss: _removeCurrent,
      ),
    );

    overlay.insert(_currentEntry!);

    // Timer para remoção automática
    _timer = Timer(duration + const Duration(milliseconds: 500), () {
      _removeCurrent();
    });
  }

  static void _removeCurrent() {
    _timer?.cancel();
    _timer = null;
    if (_currentEntry != null) {
      _currentEntry!.remove();
      _currentEntry = null;
    }
  }

  static void showError(BuildContext context, String message) {
    show(context, message: message, type: DSSnackbarType.error);
  }

  static void showSuccess(BuildContext context, String message) {
    show(context, message: message, type: DSSnackbarType.success);
  }

  static void showWarning(BuildContext context, String message) {
    show(context, message: message, type: DSSnackbarType.warning);
  }

  static void showInfo(BuildContext context, String message) {
    show(context, message: message, type: DSSnackbarType.info);
  }

  static Color _getColor(DSSnackbarType type) {
    switch (type) {
      case DSSnackbarType.error:
        return DSTokens.error;
      case DSSnackbarType.success:
        return DSTokens.success;
      case DSSnackbarType.warning:
        return DSTokens.warning;
      case DSSnackbarType.info:
        return DSTokens.info;
    }
  }

  static IconData _getIcon(DSSnackbarType type) {
    switch (type) {
      case DSSnackbarType.error:
        return Icons.error_outline;
      case DSSnackbarType.success:
        return Icons.check_circle_outline;
      case DSSnackbarType.warning:
        return Icons.warning_amber_outlined;
      case DSSnackbarType.info:
        return Icons.info_outline;
    }
  }
}

class _DSNotificationWidget extends StatefulWidget {
  final String message;
  final DSSnackbarType type;
  final Duration duration;
  final VoidCallback onDismiss;

  const _DSNotificationWidget({
    required this.message,
    required this.type,
    required this.duration,
    required this.onDismiss,
  });

  @override
  State<_DSNotificationWidget> createState() => _DSNotificationWidgetState();
}

class _DSNotificationWidgetState extends State<_DSNotificationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, -1.5),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));

    _controller.forward();

    // Iniciar animação de saída um pouco antes do timer do Overlay
    Future.delayed(widget.duration, () {
      if (mounted) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = DSSnackbar._getColor(widget.type);
    final icon = DSSnackbar._getIcon(widget.type);

    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: SlideTransition(
            position: _offsetAnimation,
            child: Material(
              color: Colors.transparent,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 600),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 1.0),
                  border: Border.all(color: DSTokens.onBackground, width: 3),
                  boxShadow: const [
                    BoxShadow(
                      color: DSTokens.background,
                      offset: Offset(6, 6),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: DSTokens.spacingMd,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, color: DSTokens.onBackground, size: 28),
                    const SizedBox(width: DSTokens.spacingMd),
                    Expanded(
                      child: Text(
                        widget.message.toUpperCase(),
                        style: DSTokens.headline.copyWith(
                          color: DSTokens.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: DSTokens.onBackground,
                        size: 24,
                      ),
                      onPressed: widget.onDismiss,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
