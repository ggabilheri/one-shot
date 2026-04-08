import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:backoffice_web/src/ui/widgets/ds_snackbar.dart';
import 'viewmodel.dart';

abstract class ViewmodelState<T extends StatefulWidget, VM extends IViewmodel>
    extends State<T> {
  late final VM vm;

  @override
  void initState() {
    super.initState();
    // Resolve ViewModel via GetIt. 
    // If it's a factory, we might want to pass this as a parameter if it implements IPresenterBase.
    try {
      vm = GetIt.I.get<VM>(param1: this is IPresenterBase ? this : null);
    } catch (_) {
      vm = GetIt.I.get<VM>();
    }
    
    vm.addListener(_listener);
    onInit();
  }

  void onInit() {}

  void _listener() {
    if (!mounted) return;

    if (vm.error != null) {
      final errorMessage = vm.error!;
      // Exibe o erro imediatamente
      DSSnackbar.showError(context, errorMessage);
      // Limpa no ViewModel para permitir que o mesmo erro seja disparado novamente no futuro
      vm.clearError();
    }

    setState(() {});
  }

  /// Helper para exibir estado de carregamento.
  Widget loadable({required Widget Function(bool loading) builder}) {
    return builder(vm.isLoading);
  }

  @override
  void dispose() {
    vm.removeListener(_listener);
    // Vms factory devem ser disposadas aqui
    vm.dispose();
    super.dispose();
  }
}

/// Interface base para Presenters para facilitar a injeção automática no ViewmodelState
abstract class IPresenterBase {}
