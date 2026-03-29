// GENERATED CODE - DO NOT MODIFY BY HAND

final class ApplyPatchCallOutputStatus {const ApplyPatchCallOutputStatus._(this.value);

factory ApplyPatchCallOutputStatus.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'failed' => failed,
  _ => ApplyPatchCallOutputStatus._(json),
}; }

static const ApplyPatchCallOutputStatus completed = ApplyPatchCallOutputStatus._('completed');

static const ApplyPatchCallOutputStatus failed = ApplyPatchCallOutputStatus._('failed');

static const List<ApplyPatchCallOutputStatus> values = [completed, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ApplyPatchCallOutputStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ApplyPatchCallOutputStatus($value)'; } 
 }
