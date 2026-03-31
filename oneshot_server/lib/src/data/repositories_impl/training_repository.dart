import 'package:oneshot_server/src/domain/repositories/i_training_repository.dart';
import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class TrainingRepository implements ITrainingRepository {
  @override
  Future<Training> insert(Session session, Training training) async {
    return await Training.db.insertRow(session, training);
  }

  @override
  Future<Training?> findById(Session session, UuidValue id) async {
    return await Training.db.findById(session, id);
  }

  @override
  Future<List<Training>> findByUserId(Session session, UuidValue userId) async {
    return await Training.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.date,
      orderDescending: true,
    );
  }

  @override
  Future<bool> delete(Session session, UuidValue id) async {
    final deleted = await Training.db.deleteWhere(
      session,
      where: (t) => t.id.equals(id),
    );
    return deleted.isNotEmpty;
  }
}
