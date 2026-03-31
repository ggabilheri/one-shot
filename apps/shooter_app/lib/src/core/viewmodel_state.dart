import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:oneshot_flutter/src/core/viewmodel.dart';

abstract class ViewmodelState<T extends StatefulWidget, VM extends IViewmodel>
    extends State<T> {
  late final VM vm;

  @override
  void initState() {
    super.initState();
    vm = GetIt.I.get<VM>();
    vm.addListener(_listener);
    onInit();
  }

  void onInit() {}

  void _listener() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    vm.removeListener(_listener);
    vm.dispose();
    super.dispose();
  }
}
