// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class NotificationEventRequest {const NotificationEventRequest({this.id = const Omittable.absent(), this.idempotencyKey = const Omittable.absent(), });

factory NotificationEventRequest.fromJson(Map<String, dynamic> json) { return NotificationEventRequest(
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  idempotencyKey: json.containsKey('idempotency_key') ? Omittable(json['idempotency_key'] as String?) : const Omittable.absent(),
); }

/// ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
final Omittable<String?> id;

/// The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
final Omittable<String?> idempotencyKey;

Map<String, dynamic> toJson() { return {
  if (id.isPresent) 'id': id.value,
  if (idempotencyKey.isPresent) 'idempotency_key': idempotencyKey.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'idempotency_key'}.contains(key)); } 
NotificationEventRequest copyWith({Omittable<String?>? id, Omittable<String?>? idempotencyKey, }) { return NotificationEventRequest(
  id: id ?? this.id,
  idempotencyKey: idempotencyKey ?? this.idempotencyKey,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationEventRequest &&
          id == other.id &&
          idempotencyKey == other.idempotencyKey; } 
@override int get hashCode { return Object.hash(id, idempotencyKey); } 
@override String toString() { return 'NotificationEventRequest(id: $id, idempotencyKey: $idempotencyKey)'; } 
 }
