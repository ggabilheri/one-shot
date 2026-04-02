import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'viewmodel.dart';

abstract class ViewmodelState<T extends StatefulWidget, VM extends IViewmodel>
    extends State<T> {
  late final VM vm;

  @override
  void initState() {
    super.initState();
    // Tenta resolver a ViewModel. Se for uma que exige parâmetro (Presenter),
    // a implementação da Page deve prover uma forma ou usar GetIt.I.get<VM>(param1: this)
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
    if (mounted) setState(() {});
  }

  /// Helper para exibir estado de carregamento.
  Widget loadable({required Widget Function(bool loading) builder}) {
    return builder(vm.isLoading);
  }

  @override
  void dispose() {
    vm.removeListener(_listener);
    // Nota: depends on if we want to dispose VM here. 
    // Usually factory vms should be disposed.
    vm.dispose();
    super.dispose();
  }
}

/// Interface base para Presenters para facilitar a injeção automática no ViewmodelState
abstract class IPresenterBase {}
