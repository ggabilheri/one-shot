import 'package:flutter/material.dart';
import 'package:oneshot_flutter/src/core/viewmodel_state.dart';
import 'package:oneshot_flutter/src/ui/pages/home/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ViewmodelState<HomePage, IHomeViewmodel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OneShot')),
      body: const Center(child: Text('Home Page')),
    );
  }
}
