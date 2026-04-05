import 'package:oneshot_server/src/core/repository/gunsmith_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// Interface para o caso de uso de registro de Ordem de Serviço.
abstract class IRegisterServiceOrderUseCase {
  Future<ServiceOrder> execute(Session session, ServiceOrder order, List<ServiceOrderItem> items);
}

/// Implementação do caso de uso com regras de negócio.
class RegisterServiceOrderUseCase implements IRegisterServiceOrderUseCase {
  final IGunsmithRepository _gunsmithRepository;

  RegisterServiceOrderUseCase(this._gunsmithRepository);

  @override
  Future<ServiceOrder> execute(Session session, ServiceOrder order, List<ServiceOrderItem> items) async {
    // 1. Validar se o cliente foi informado (logica de negocio movida para camada superior se necessario)

    // 2. Calcular o preço total baseando-se nos itens
    double itemsTotal = 0;
    for (var item in items) {
      itemsTotal += item.servicePrice;
    }

    order.totalPrice = itemsTotal;
    
    // 3. Aplicar desconto se houver
    final discount = order.discount ?? 0;
    order.finalPrice = itemsTotal - discount;

    // 4. Se o preço for negativo, erro
    if (order.finalPrice < 0) {
      throw Exception('O valor final da ordem não pode ser negativo.');
    }

    // 5. Audit: Set entry date
    order.entryDate = DateTime.now();

    // 6. Persistir no repositório
    return await _gunsmithRepository.createServiceOrder(session, order, items);
  }
}
