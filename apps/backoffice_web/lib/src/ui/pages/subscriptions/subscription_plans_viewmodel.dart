import 'package:backoffice_web/src/core/viewmodel.dart';
import 'package:backoffice_web/src/domain/repositories/subscription_plan_repository.dart';
import 'package:oneshot_client/oneshot_client.dart';

abstract class ISubscriptionPlansViewModel extends IViewmodel {
  List<SubscriptionPlan> get plans;
  bool get isLoading;
  PlanType? get filterType;
  PlanStatus? get filterStatus;

  void setFilterType(PlanType? type);
  void setFilterStatus(PlanStatus? status);

  Future<void> loadPlans();
  Future<void> savePlan(SubscriptionPlan plan, {bool isEditing = false});
  Future<void> deletePlan(UuidValue id);
}

class SubscriptionPlansViewModel extends Viewmodel implements ISubscriptionPlansViewModel {
  final ISubscriptionPlanRepository _repository;

  SubscriptionPlansViewModel(this._repository);

  List<SubscriptionPlan> _plans = [];
  bool _isLoading = false;
  PlanType? _filterType;
  PlanStatus? _filterStatus;

  @override
  List<SubscriptionPlan> get plans => _plans;

  @override
  bool get isLoading => _isLoading;

  @override
  PlanType? get filterType => _filterType;

  @override
  PlanStatus? get filterStatus => _filterStatus;

  @override
  void setFilterType(PlanType? type) {
    _filterType = type;
    loadPlans();
  }

  @override
  void setFilterStatus(PlanStatus? status) {
    _filterStatus = status;
    loadPlans();
  }

  @override
  Future<void> loadPlans() async {
    setLoading(true);
    _isLoading = true;
    notifyListeners();

    try {
      _plans = await _repository.listPlans(
        planType: _filterType,
        status: _filterStatus,
      );
      setError(null);
    } catch (e) {
      setError(e.toString());
    } finally {
      _isLoading = false;
      setLoading(false);
      notifyListeners();
    }
  }

  @override
  Future<void> savePlan(SubscriptionPlan plan, {bool isEditing = false}) async {
    setLoading(true);
    try {
      if (isEditing) {
        await _repository.updatePlan(plan);
      } else {
        await _repository.createPlan(plan);
      }
      await loadPlans();
    } catch (e) {
      setError(e.toString());
      rethrow;
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deletePlan(UuidValue id) async {
    setLoading(true);
    try {
      await _repository.deletePlan(id);
      await loadPlans();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
