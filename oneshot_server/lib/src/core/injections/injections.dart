import 'package:oneshot_server/src/data/repositories_impl/ammunition_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/club_repositories.dart';
import 'package:oneshot_server/src/data/repositories_impl/firearm_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/gunsmith_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/reload_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/training_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/user_profile_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_ammunition_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_club_repositories.dart';
import 'package:oneshot_server/src/domain/repositories/i_firearm_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_gunsmith_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_reload_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_training_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_user_profile_repository.dart';
import 'package:oneshot_server/src/domain/use_cases/execute_reload_session_use_case.dart';
import 'package:oneshot_server/src/domain/use_cases/get_or_create_profile_use_case.dart';
import 'package:oneshot_server/src/domain/use_cases/register_range_visit_use_case.dart';
import 'package:oneshot_server/src/domain/use_cases/register_service_order_use_case.dart';
import 'package:oneshot_server/src/domain/use_cases/register_training_use_case.dart';

/// Service Locator simples para gerenciar dependências no backend.
class Injections {
  static final Injections _instance = Injections._internal();
  factory Injections() => _instance;
  Injections._internal();

  // Repositories
  late final ITrainingRepository trainingRepository;
  late final IGunsmithRepository gunsmithRepository;
  late final IUserProfileRepository userProfileRepository;
  late final IFirearmRepository firearmRepository;
  late final IAmmunitionRepository ammunitionRepository;
  late final IReloadRepository reloadRepository;
  late final IClubRepository clubRepository;
  late final IMembershipRepository membershipRepository;
  late final IRangeVisitRepository rangeVisitRepository;

  // Use Cases
  late final IRegisterTrainingUseCase registerTrainingUseCase;
  late final IRegisterServiceOrderUseCase registerServiceOrderUseCase;
  late final IGetOrCreateProfileUseCase getOrCreateProfileUseCase;
  late final IExecuteReloadSessionUseCase executeReloadSessionUseCase;
  late final IRegisterRangeVisitUseCase registerRangeVisitUseCase;

  void init() {
    // 1. Repositories
    trainingRepository = TrainingRepository();
    gunsmithRepository = GunsmithRepository();
    userProfileRepository = UserProfileRepository();
    firearmRepository = FirearmRepository();
    ammunitionRepository = AmmunitionRepository();
    reloadRepository = ReloadRepository();
    clubRepository = ClubRepository();
    membershipRepository = MembershipRepository();
    rangeVisitRepository = RangeVisitRepository();

    // 2. Use Cases
    registerTrainingUseCase = RegisterTrainingUseCase(trainingRepository);
    registerServiceOrderUseCase = RegisterServiceOrderUseCase(gunsmithRepository);
    getOrCreateProfileUseCase = GetOrCreateProfileUseCase(userProfileRepository);
    executeReloadSessionUseCase = ExecuteReloadSessionUseCase(reloadRepository, ammunitionRepository);
    registerRangeVisitUseCase = RegisterRangeVisitUseCase(rangeVisitRepository, membershipRepository);
  }
}

final sl = Injections();
