// GENERATED CODE - DO NOT MODIFY BY HAND

final class ApplyPatchCallStatus {const ApplyPatchCallStatus._(this.value);

factory ApplyPatchCallStatus.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  'completed' => completed,
  _ => ApplyPatchCallStatus._(json),
}; }

static const ApplyPatchCallStatus inProgress = ApplyPatchCallStatus._('in_progress');

static const ApplyPatchCallStatus completed = ApplyPatchCallStatus._('completed');

static const List<ApplyPatchCallStatus> values = [inProgress, completed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchCallStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ApplyPatchCallStatus($value)'; } 
 }
