import 'package:oneshot_server/src/core/repository/accessory_repository.dart';
import 'package:oneshot_server/src/core/repository/document_repository.dart';
import 'package:oneshot_server/src/core/repository/firearm_repository.dart';
import 'package:oneshot_server/src/core/repository/gunsmith_repository.dart';
import 'package:oneshot_server/src/core/repository/invoice_item_repository.dart';
import 'package:oneshot_server/src/core/repository/invoice_repository.dart';
import 'package:oneshot_server/src/core/repository/payment_repository.dart';
import 'package:oneshot_server/src/core/repository/user_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/ammunition_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/club_repositories.dart';
import 'package:oneshot_server/src/data/repositories_impl/reload_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/training_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_ammunition_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_club_repositories.dart';
import 'package:oneshot_server/src/domain/repositories/i_reload_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_training_repository.dart';
import 'package:oneshot_server/src/domain/repositories/i_security_role_repository.dart';
import 'package:oneshot_server/src/data/repositories_impl/security_role_repository.dart';
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

  late final ITrainingRepository trainingRepository;
  late final IGunsmithRepository gunsmithRepository;
  late final IUserProfileRepository userProfileRepository;
  late final IFirearmRepository firearmRepository;
  late final IAccessoryRepository accessoryRepository;
  late final IDocumentRepository documentRepository;
  late final IAmmunitionRepository ammunitionRepository;
  late final IReloadRepository reloadRepository;
  late final IClubRepository clubRepository;
  late final IMembershipRepository membershipRepository;
  late final IRangeVisitRepository rangeVisitRepository;
  late final ISecurityRoleRepository securityRoleRepository;

  // Finance Repositories
  late final IInvoiceRepository invoiceRepository;
  late final IInvoiceItemRepository invoiceItemRepository;
  late final IPaymentRepository paymentRepository;

  // Use Cases
  late final IRegisterTrainingUseCase registerTrainingUseCase;
  late final IRegisterServiceOrderUseCase registerServiceOrderUseCase;
  late final IGetOrCreateProfileUseCase getOrCreateProfileUseCase;
  late final IExecuteReloadSessionUseCase executeReloadSessionUseCase;
  late final IRegisterRangeVisitUseCase registerRangeVisitUseCase;

  void init() {
    trainingRepository = TrainingRepository();
    gunsmithRepository = GunsmithRepository();
    userProfileRepository = UserProfileRepository();
    firearmRepository = FirearmRepository();
    accessoryRepository = AccessoryRepository();
    documentRepository = DocumentRepository();
    ammunitionRepository = AmmunitionRepository();
    reloadRepository = ReloadRepository();
    clubRepository = ClubRepository();
    membershipRepository = MembershipRepository();
    rangeVisitRepository = RangeVisitRepository();
    securityRoleRepository = SecurityRoleRepository();

    // Finance
    invoiceRepository = InvoiceRepository();
    invoiceItemRepository = InvoiceItemRepository();
    paymentRepository = PaymentRepository();

    // 2. Use Cases
    registerTrainingUseCase = RegisterTrainingUseCase(trainingRepository);
    registerServiceOrderUseCase = RegisterServiceOrderUseCase(gunsmithRepository);
    getOrCreateProfileUseCase = GetOrCreateProfileUseCase(userProfileRepository);
    executeReloadSessionUseCase = ExecuteReloadSessionUseCase(reloadRepository, ammunitionRepository);
    registerRangeVisitUseCase = RegisterRangeVisitUseCase(rangeVisitRepository, membershipRepository);
  }
}

final sl = Injections();
