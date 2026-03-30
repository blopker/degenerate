// GENERATED CODE - DO NOT MODIFY BY HAND

extension type const WaitingroomEstimatedQueuedUsers(int value) {
factory WaitingroomEstimatedQueuedUsers.fromJson(num json) => WaitingroomEstimatedQueuedUsers(json.toInt());

num toJson() => value;

}
extension type const WaitingroomEstimatedTotalActiveUsers(int value) {
factory WaitingroomEstimatedTotalActiveUsers.fromJson(num json) => WaitingroomEstimatedTotalActiveUsers(json.toInt());

num toJson() => value;

}
extension type const WaitingroomMaxEstimatedTimeMinutes(int value) {
factory WaitingroomMaxEstimatedTimeMinutes.fromJson(num json) => WaitingroomMaxEstimatedTimeMinutes(json.toInt());

num toJson() => value;

}
final class WaitingroomStatus {const WaitingroomStatus._(this.value);

factory WaitingroomStatus.fromJson(String json) { return switch (json) {
  'event_prequeueing' => eventPrequeueing,
  'not_queueing' => notQueueing,
  'queueing' => queueing,
  'suspended' => suspended,
  _ => WaitingroomStatus._(json),
}; }

static const WaitingroomStatus eventPrequeueing = WaitingroomStatus._('event_prequeueing');

static const WaitingroomStatus notQueueing = WaitingroomStatus._('not_queueing');

static const WaitingroomStatus queueing = WaitingroomStatus._('queueing');

static const WaitingroomStatus suspended = WaitingroomStatus._('suspended');

static const List<WaitingroomStatus> values = [eventPrequeueing, notQueueing, queueing, suspended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WaitingroomStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WaitingroomStatus($value)'; } 
 }
extension type const WaitingroomStatusEventId(String value) {
factory WaitingroomStatusEventId.fromJson(String json) => WaitingroomStatusEventId(json);

String toJson() => value;

}
final class WaitingroomStatusResponseResult {const WaitingroomStatusResponseResult({this.estimatedQueuedUsers, this.estimatedTotalActiveUsers, this.eventId, this.maxEstimatedTimeMinutes, this.status, });

factory WaitingroomStatusResponseResult.fromJson(Map<String, dynamic> json) { return WaitingroomStatusResponseResult(
  estimatedQueuedUsers: json['estimated_queued_users'] != null ? WaitingroomEstimatedQueuedUsers.fromJson(json['estimated_queued_users'] as num) : null,
  estimatedTotalActiveUsers: json['estimated_total_active_users'] != null ? WaitingroomEstimatedTotalActiveUsers.fromJson(json['estimated_total_active_users'] as num) : null,
  eventId: json['event_id'] != null ? WaitingroomStatusEventId.fromJson(json['event_id'] as String) : null,
  maxEstimatedTimeMinutes: json['max_estimated_time_minutes'] != null ? WaitingroomMaxEstimatedTimeMinutes.fromJson(json['max_estimated_time_minutes'] as num) : null,
  status: json['status'] != null ? WaitingroomStatus.fromJson(json['status'] as String) : null,
); }

final WaitingroomEstimatedQueuedUsers? estimatedQueuedUsers;

final WaitingroomEstimatedTotalActiveUsers? estimatedTotalActiveUsers;

final WaitingroomStatusEventId? eventId;

final WaitingroomMaxEstimatedTimeMinutes? maxEstimatedTimeMinutes;

final WaitingroomStatus? status;

Map<String, dynamic> toJson() { return {
  if (estimatedQueuedUsers != null) 'estimated_queued_users': estimatedQueuedUsers?.toJson(),
  if (estimatedTotalActiveUsers != null) 'estimated_total_active_users': estimatedTotalActiveUsers?.toJson(),
  if (eventId != null) 'event_id': eventId?.toJson(),
  if (maxEstimatedTimeMinutes != null) 'max_estimated_time_minutes': maxEstimatedTimeMinutes?.toJson(),
  if (status != null) 'status': status?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'estimated_queued_users', 'estimated_total_active_users', 'event_id', 'max_estimated_time_minutes', 'status'}.contains(key)); } 
WaitingroomStatusResponseResult copyWith({WaitingroomEstimatedQueuedUsers Function()? estimatedQueuedUsers, WaitingroomEstimatedTotalActiveUsers Function()? estimatedTotalActiveUsers, WaitingroomStatusEventId Function()? eventId, WaitingroomMaxEstimatedTimeMinutes Function()? maxEstimatedTimeMinutes, WaitingroomStatus Function()? status, }) { return WaitingroomStatusResponseResult(
  estimatedQueuedUsers: estimatedQueuedUsers != null ? estimatedQueuedUsers() : this.estimatedQueuedUsers,
  estimatedTotalActiveUsers: estimatedTotalActiveUsers != null ? estimatedTotalActiveUsers() : this.estimatedTotalActiveUsers,
  eventId: eventId != null ? eventId() : this.eventId,
  maxEstimatedTimeMinutes: maxEstimatedTimeMinutes != null ? maxEstimatedTimeMinutes() : this.maxEstimatedTimeMinutes,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomStatusResponseResult &&
          estimatedQueuedUsers == other.estimatedQueuedUsers &&
          estimatedTotalActiveUsers == other.estimatedTotalActiveUsers &&
          eventId == other.eventId &&
          maxEstimatedTimeMinutes == other.maxEstimatedTimeMinutes &&
          status == other.status; } 
@override int get hashCode { return Object.hash(estimatedQueuedUsers, estimatedTotalActiveUsers, eventId, maxEstimatedTimeMinutes, status); } 
@override String toString() { return 'WaitingroomStatusResponseResult(estimatedQueuedUsers: $estimatedQueuedUsers, estimatedTotalActiveUsers: $estimatedTotalActiveUsers, eventId: $eventId, maxEstimatedTimeMinutes: $maxEstimatedTimeMinutes, status: $status)'; } 
 }
