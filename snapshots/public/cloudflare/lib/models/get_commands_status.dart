// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCommandsStatus {const GetCommandsStatus._(this.value);

factory GetCommandsStatus.fromJson(String json) { return switch (json) {
  'PENDING_EXEC' => pendingExec,
  'PENDING_UPLOAD' => pendingUpload,
  'SUCCESS' => success,
  'FAILED' => failed,
  _ => GetCommandsStatus._(json),
}; }

static const GetCommandsStatus pendingExec = GetCommandsStatus._('PENDING_EXEC');

static const GetCommandsStatus pendingUpload = GetCommandsStatus._('PENDING_UPLOAD');

static const GetCommandsStatus success = GetCommandsStatus._('SUCCESS');

static const GetCommandsStatus failed = GetCommandsStatus._('FAILED');

static const List<GetCommandsStatus> values = [pendingExec, pendingUpload, success, failed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetCommandsStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetCommandsStatus($value)'; } 
 }
