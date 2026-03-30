// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtimekit_stop_reason_caller.dart';/// Specifies the reason why the recording stopped.
final class RealtimekitStopReasonReason {const RealtimekitStopReasonReason._(this.value);

factory RealtimekitStopReasonReason.fromJson(String json) { return switch (json) {
  'API_CALL' => apiCall,
  'INTERNAL_ERROR' => internalError,
  'ALL_PEERS_LEFT' => allPeersLeft,
  _ => RealtimekitStopReasonReason._(json),
}; }

static const RealtimekitStopReasonReason apiCall = RealtimekitStopReasonReason._('API_CALL');

static const RealtimekitStopReasonReason internalError = RealtimekitStopReasonReason._('INTERNAL_ERROR');

static const RealtimekitStopReasonReason allPeersLeft = RealtimekitStopReasonReason._('ALL_PEERS_LEFT');

static const List<RealtimekitStopReasonReason> values = [apiCall, internalError, allPeersLeft];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimekitStopReasonReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimekitStopReasonReason($value)'; } 
 }
final class RealtimekitStopReason {const RealtimekitStopReason({this.caller, this.reason, });

factory RealtimekitStopReason.fromJson(Map<String, dynamic> json) { return RealtimekitStopReason(
  caller: json['caller'] != null ? RealtimekitStopReasonCaller.fromJson(json['caller'] as Map<String, dynamic>) : null,
  reason: json['reason'] != null ? RealtimekitStopReasonReason.fromJson(json['reason'] as String) : null,
); }

final RealtimekitStopReasonCaller? caller;

/// Specifies the reason why the recording stopped.
final RealtimekitStopReasonReason? reason;

Map<String, dynamic> toJson() { return {
  if (caller != null) 'caller': caller?.toJson(),
  if (reason != null) 'reason': reason?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'caller', 'reason'}.contains(key)); } 
RealtimekitStopReason copyWith({RealtimekitStopReasonCaller Function()? caller, RealtimekitStopReasonReason Function()? reason, }) { return RealtimekitStopReason(
  caller: caller != null ? caller() : this.caller,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitStopReason &&
          caller == other.caller &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(caller, reason); } 
@override String toString() { return 'RealtimekitStopReason(caller: $caller, reason: $reason)'; } 
 }
