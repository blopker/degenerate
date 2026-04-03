// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_realtime_call_incoming_data_sip_headers.dart';/// Event data payload.
/// 
@immutable final class WebhookRealtimeCallIncomingData {const WebhookRealtimeCallIncomingData({required this.callId, required this.sipHeaders, });

factory WebhookRealtimeCallIncomingData.fromJson(Map<String, dynamic> json) { return WebhookRealtimeCallIncomingData(
  callId: json['call_id'] as String,
  sipHeaders: (json['sip_headers'] as List<dynamic>).map((e) => WebhookRealtimeCallIncomingDataSipHeaders.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The unique ID of this call.
/// 
final String callId;

/// Headers from the SIP Invite.
/// 
final List<WebhookRealtimeCallIncomingDataSipHeaders> sipHeaders;

Map<String, dynamic> toJson() { return {
  'call_id': callId,
  'sip_headers': sipHeaders.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('call_id') && json['call_id'] is String &&
      json.containsKey('sip_headers'); } 
WebhookRealtimeCallIncomingData copyWith({String? callId, List<WebhookRealtimeCallIncomingDataSipHeaders>? sipHeaders, }) { return WebhookRealtimeCallIncomingData(
  callId: callId ?? this.callId,
  sipHeaders: sipHeaders ?? this.sipHeaders,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRealtimeCallIncomingData &&
          callId == other.callId &&
          listEquals(sipHeaders, other.sipHeaders); } 
@override int get hashCode { return Object.hash(callId, Object.hashAll(sipHeaders)); } 
@override String toString() { return 'WebhookRealtimeCallIncomingData(callId: $callId, sipHeaders: $sipHeaders)'; } 
 }
