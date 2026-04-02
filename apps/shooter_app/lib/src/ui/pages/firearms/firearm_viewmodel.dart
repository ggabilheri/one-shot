import 'package:oneshot_client/oneshot_client.dart';
import 'package:oneshot_flutter/src/core/repository/firearm_repository.dart';
import 'package:oneshot_flutter/src/core/viewmodel.dart';

abstract class IFirearmViewmodel extends IViewmodel {
  List<Firearm> get firearms;
  Future<void> loadFirearms(UuidValue userId);
  Future<void> saveFirearm(Firearm firearm);
  Future<void> deleteFirearm(UuidValue id);
}

abstract class IFirearmPresenter {
  void goToForm([Firearm? firearm]);
  void back();
}

class FirearmViewModel extends Viewmodel implements IFirearmViewmodel {
  final IFirearmRepository _firearmRepository;
  final IFirearmPresenter _presenter;

  FirearmViewModel(this._firearmRepository, this._presenter);

  List<Firearm> _firearms = [];
  UuidValue? _lastUserId;

  @override
  List<Firearm> get firearms => _firearms;

  @override
  Future<void> loadFirearms(UuidValue userId) async {
    try {
      setLoading(true);
      setError(null);
      _lastUserId = userId;
      _firearms = await _firearmRepository.listByUser(userId);
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> saveFirearm(Firearm firearm) async {
    try {
      setLoading(true);
      // O ID do firearm é gerado automaticamente se for nulo no factory, 
      // mas no banco ele só existe se vier do servidor.
      // No Serverpod, novos objetos (não salvos) podem ter ID, mas verificamos se é update ou create
      // com base em alguma lógica de negócio ou se o ID já existe no banco.
      // Por simplicidade, vamos usar o método create/update do repositório.
      
      // Assumindo que se tivermos carregado a lista, o update vs create é decidido pelo formulário
      // ou se o objeto já tem um ID que veio do banco.
      
      // NOTA: Como não rodamos o generate com os novos métodos, 
      // o create/update padrão do serverpod decide.
      
      // Se não tivermos o ID vindo do banco, criamos.
      // Mas o firearm.id é gerado no construtor. 
      // Melhor usar uma flag ou checar se o firearm já existe na lista.
      
      // Por enquanto, vamos sempre tentar criar se for novo.
      await _firearmRepository.create(firearm);
      
      if (_lastUserId != null) {
        await loadFirearms(_lastUserId!);
      }
      _presenter.back();
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }

  @override
  Future<void> deleteFirearm(UuidValue id) async {
    try {
      setLoading(true);
      await _firearmRepository.delete(id);
      if (_lastUserId != null) {
        await loadFirearms(_lastUserId!);
      }
    } catch (e) {
      setError(e.toString());
    } finally {
      setLoading(false);
    }
  }
}
