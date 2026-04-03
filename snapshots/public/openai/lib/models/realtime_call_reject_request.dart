// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Parameters used to decline an incoming SIP call handled by the Realtime API.
@immutable final class RealtimeCallRejectRequest {const RealtimeCallRejectRequest({this.statusCode});

factory RealtimeCallRejectRequest.fromJson(Map<String, dynamic> json) { return RealtimeCallRejectRequest(
  statusCode: json['status_code'] != null ? (json['status_code'] as num).toInt() : null,
); }

/// SIP response code to send back to the caller. Defaults to `603` (Decline)
/// when omitted.
final int? statusCode;

Map<String, dynamic> toJson() { return {
  'status_code': ?statusCode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status_code'}.contains(key)); } 
RealtimeCallRejectRequest copyWith({int Function()? statusCode}) { return RealtimeCallRejectRequest(
  statusCode: statusCode != null ? statusCode() : this.statusCode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeCallRejectRequest &&
          statusCode == other.statusCode; } 
@override int get hashCode { return statusCode.hashCode; } 
@override String toString() { return 'RealtimeCallRejectRequest(statusCode: $statusCode)'; } 
 }
