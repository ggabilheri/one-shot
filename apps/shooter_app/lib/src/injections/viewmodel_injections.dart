import 'package:get_it/get_it.dart';
import 'package:oneshot_flutter/src/ui/pages/home/home_viewmodel.dart';

final getIt = GetIt.instance;

void setupViewModelInjections() {
  getIt.registerFactory<IHomeViewmodel>(() => HomeViewmodel());
}
