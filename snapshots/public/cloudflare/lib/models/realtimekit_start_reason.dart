// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_start_reason_caller.dart';/// Specifies if the recording was started using the "Start a Recording"API or using the parameter RECORD_ON_START in the "Create a meeting" API.
/// 
/// If the recording is initiated using the "RECORD_ON_START" parameter, the user details will not be populated.
final class RealtimekitStartReasonReason {const RealtimekitStartReasonReason._(this.value);

factory RealtimekitStartReasonReason.fromJson(String json) { return switch (json) {
  'API_CALL' => apiCall,
  'RECORD_ON_START' => recordOnStart,
  _ => RealtimekitStartReasonReason._(json),
}; }

static const RealtimekitStartReasonReason apiCall = RealtimekitStartReasonReason._('API_CALL');

static const RealtimekitStartReasonReason recordOnStart = RealtimekitStartReasonReason._('RECORD_ON_START');

static const List<RealtimekitStartReasonReason> values = [apiCall, recordOnStart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitStartReasonReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitStartReasonReason($value)'; } 
 }
final class RealtimekitStartReason {const RealtimekitStartReason({this.caller, this.reason, });

factory RealtimekitStartReason.fromJson(Map<String, dynamic> json) { return RealtimekitStartReason(
  caller: json['caller'] != null ? RealtimekitStartReasonCaller.fromJson(json['caller'] as Map<String, dynamic>) : null,
  reason: json['reason'] != null ? RealtimekitStartReasonReason.fromJson(json['reason'] as String) : null,
); }

final RealtimekitStartReasonCaller? caller;

/// Specifies if the recording was started using the "Start a Recording"API or using the parameter RECORD_ON_START in the "Create a meeting" API.
/// 
/// If the recording is initiated using the "RECORD_ON_START" parameter, the user details will not be populated.
final RealtimekitStartReasonReason? reason;

Map<String, dynamic> toJson() { return {
  if (caller != null) 'caller': caller?.toJson(),
  if (reason != null) 'reason': reason?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimekitStartReason copyWith({RealtimekitStartReasonCaller Function()? caller, RealtimekitStartReasonReason Function()? reason, }) { return RealtimekitStartReason(
  caller: caller != null ? caller() : this.caller,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitStartReason &&
          caller == other.caller &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(caller, reason); } 
@override String toString() { return 'RealtimekitStartReason(caller: $caller, reason: $reason)'; } 
 }
