/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class AsaasWebhookEvent implements _i1.SerializableModel {
  AsaasWebhookEvent._({
    _i1.UuidValue? id,
    required this.eventId,
    required this.event,
    required this.payload,
    bool? processed,
    this.processedAt,
    this.error,
    DateTime? receivedAt,
  }) : id = id ?? const _i1.Uuid().v4obj(),
       processed = processed ?? false,
       receivedAt = receivedAt ?? DateTime.now();

  factory AsaasWebhookEvent({
    _i1.UuidValue? id,
    required String eventId,
    required String event,
    required String payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  }) = _AsaasWebhookEventImpl;

  factory AsaasWebhookEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return AsaasWebhookEvent(
      id: jsonSerialization['id'] == null
          ? null
          : _i1.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      eventId: jsonSerialization['eventId'] as String,
      event: jsonSerialization['event'] as String,
      payload: jsonSerialization['payload'] as String,
      processed: jsonSerialization['processed'] == null
          ? null
          : _i1.BoolJsonExtension.fromJson(jsonSerialization['processed']),
      processedAt: jsonSerialization['processedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['processedAt'],
            ),
      error: jsonSerialization['error'] as String?,
      receivedAt: jsonSerialization['receivedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['receivedAt']),
    );
  }

  /// The id of the object.
  _i1.UuidValue id;

  String eventId;

  String event;

  String payload;

  bool processed;

  DateTime? processedAt;

  String? error;

  DateTime receivedAt;

  /// Returns a shallow copy of this [AsaasWebhookEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  AsaasWebhookEvent copyWith({
    _i1.UuidValue? id,
    String? eventId,
    String? event,
    String? payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'AsaasWebhookEvent',
      'id': id.toJson(),
      'eventId': eventId,
      'event': event,
      'payload': payload,
      'processed': processed,
      if (processedAt != null) 'processedAt': processedAt?.toJson(),
      if (error != null) 'error': error,
      'receivedAt': receivedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _AsaasWebhookEventImpl extends AsaasWebhookEvent {
  _AsaasWebhookEventImpl({
    _i1.UuidValue? id,
    required String eventId,
    required String event,
    required String payload,
    bool? processed,
    DateTime? processedAt,
    String? error,
    DateTime? receivedAt,
  }) : super._(
         id: id,
         eventId: eventId,
         event: event,
         payload: payload,
         processed: processed,
         processedAt: processedAt,
         error: error,
         receivedAt: receivedAt,
       );

  /// Returns a shallow copy of this [AsaasWebhookEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  AsaasWebhookEvent copyWith({
    _i1.UuidValue? id,
    String? eventId,
    String? event,
    String? payload,
    bool? processed,
    Object? processedAt = _Undefined,
    Object? error = _Undefined,
    DateTime? receivedAt,
  }) {
    return AsaasWebhookEvent(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      event: event ?? this.event,
      payload: payload ?? this.payload,
      processed: processed ?? this.processed,
      processedAt: processedAt is DateTime? ? processedAt : this.processedAt,
      error: error is String? ? error : this.error,
      receivedAt: receivedAt ?? this.receivedAt,
    );
  }
}
