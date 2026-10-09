import 'package:oneshot_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

/// This is a simple example of a future call that logs a birthday reminder.
///
/// In a real-world application, you would implement the logic to send a
/// an email or a push notification to the user.
class BirthdayReminder extends FutureCall<Greeting> {
  /// No Serverpod 4 o método público com [Session] como primeiro parâmetro é
  /// envolvido automaticamente pelo código gerado (future_calls.dart).
  Future<void> invoke(Session session, Greeting? object) async {
    // This is where you would implement the logic to send a birthday reminder.
    // For example, you could send an email or a notification to the user.
    // You can access the user information from the `object` parameter if
    // needed.

    session.log('${object?.message} Remember to send a birthday card!');
  }
}
