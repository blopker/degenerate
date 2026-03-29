// GENERATED CODE - DO NOT MODIFY BY HAND

/// Status discriminator that is always `locked`.
final class LockedStatusType {const LockedStatusType._(this.value);

factory LockedStatusType.fromJson(String json) { return switch (json) {
  'locked' => locked,
  _ => LockedStatusType._(json),
}; }

static const LockedStatusType locked = LockedStatusType._('locked');

static const List<LockedStatusType> values = [locked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LockedStatusType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LockedStatusType($value)'; } 
 }
/// Indicates that a thread is locked and cannot accept new input.
final class LockedStatus {const LockedStatus({this.type = LockedStatusType.locked, required this.reason, });

factory LockedStatus.fromJson(Map<String, dynamic> json) { return LockedStatus(
  type: LockedStatusType.fromJson(json['type'] as String),
  reason: json['reason'] as String?,
); }

/// Status discriminator that is always `locked`.
final LockedStatusType type;

/// Reason that the thread was locked. Defaults to null when no reason is recorded.
final String? reason;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'reason': ?reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('reason') && json['reason'] is String; } 
LockedStatus copyWith({LockedStatusType? type, String? Function()? reason, }) { return LockedStatus(
  type: type ?? this.type,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LockedStatus &&
          type == other.type &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(type, reason); } 
@override String toString() { return 'LockedStatus(type: $type, reason: $reason)'; } 
 }
