import 'package:get_it/get_it.dart';
import '../core/repository/user_repository.dart';
import '../core/repository/firearm_repository.dart';
import '../core/repository/accessory_repository.dart';
import '../core/repository/document_repository.dart';
import '../ui/pages/home/home_viewmodel.dart';
import '../ui/pages/profile/profile_viewmodel.dart';
import '../ui/pages/firearms/firearm_viewmodel.dart';
import '../ui/pages/accessories/accessory_viewmodel.dart';
import '../ui/pages/documents/document_viewmodel.dart';

void setupViewModelInjections() {
  final getIt = GetIt.I;

  getIt.registerFactory<IHomeViewmodel>(() => HomeViewmodel());

  // Registro do ProfileViewModel recebendo o Presenter como parâmetro
  getIt.registerFactoryParam<IProfileViewmodel, IProfilePresenter, void>(
    (presenter, _) => ProfileViewModel(getIt.get<IUserRepository>(), presenter),
  );

  // Registro do FirearmViewModel recebendo o Presenter como parâmetro
  getIt.registerFactoryParam<IFirearmViewmodel, IFirearmPresenter, void>(
    (presenter, _) => FirearmViewModel(getIt.get<IFirearmRepository>(), presenter),
  );

  // Registro do AccessoryViewModel recebendo o Presenter como parâmetro
  getIt.registerFactoryParam<IAccessoryViewmodel, IAccessoryPresenter, void>(
    (presenter, _) => AccessoryViewModel(getIt.get<IAccessoryRepository>(), presenter),
  );

  // Registro do DocumentViewModel recebendo o Presenter como parâmetro
  getIt.registerFactoryParam<IDocumentViewmodel, IDocumentPresenter, void>(
    (presenter, _) => DocumentViewModel(getIt.get<IDocumentRepository>(), presenter),
  );
}
