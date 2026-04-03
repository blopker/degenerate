// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The event type, must be `input_audio_buffer.dtmf_event_received`.
@immutable final class RealtimeServerEventInputAudioBufferDtmfEventReceivedType {const RealtimeServerEventInputAudioBufferDtmfEventReceivedType._(this.value);

factory RealtimeServerEventInputAudioBufferDtmfEventReceivedType.fromJson(String json) { return switch (json) {
  'input_audio_buffer.dtmf_event_received' => inputAudioBufferDtmfEventReceived,
  _ => RealtimeServerEventInputAudioBufferDtmfEventReceivedType._(json),
}; }

static const RealtimeServerEventInputAudioBufferDtmfEventReceivedType inputAudioBufferDtmfEventReceived = RealtimeServerEventInputAudioBufferDtmfEventReceivedType._('input_audio_buffer.dtmf_event_received');

static const List<RealtimeServerEventInputAudioBufferDtmfEventReceivedType> values = [inputAudioBufferDtmfEventReceived];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventInputAudioBufferDtmfEventReceivedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferDtmfEventReceivedType($value)'; } 
 }
/// **SIP Only:** Returned when an DTMF event is received. A DTMF event is a message that
/// represents a telephone keypad press (0–9, *, #, A–D). The `event` property
/// is the keypad that the user press. The `received_at` is the UTC Unix Timestamp
/// that the server received the event.
/// 
@immutable final class RealtimeServerEventInputAudioBufferDtmfEventReceived {const RealtimeServerEventInputAudioBufferDtmfEventReceived({required this.type, required this.event, required this.receivedAt, });

factory RealtimeServerEventInputAudioBufferDtmfEventReceived.fromJson(Map<String, dynamic> json) { return RealtimeServerEventInputAudioBufferDtmfEventReceived(
  type: RealtimeServerEventInputAudioBufferDtmfEventReceivedType.fromJson(json['type'] as String),
  event: json['event'] as String,
  receivedAt: (json['received_at'] as num).toInt(),
); }

/// The event type, must be `input_audio_buffer.dtmf_event_received`.
final RealtimeServerEventInputAudioBufferDtmfEventReceivedType type;

/// The telephone keypad that was pressed by the user.
final String event;

/// UTC Unix Timestamp when DTMF Event was received by server.
/// 
final int receivedAt;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'event': event,
  'received_at': receivedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('event') && json['event'] is String &&
      json.containsKey('received_at') && json['received_at'] is num; } 
RealtimeServerEventInputAudioBufferDtmfEventReceived copyWith({RealtimeServerEventInputAudioBufferDtmfEventReceivedType? type, String? event, int? receivedAt, }) { return RealtimeServerEventInputAudioBufferDtmfEventReceived(
  type: type ?? this.type,
  event: event ?? this.event,
  receivedAt: receivedAt ?? this.receivedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventInputAudioBufferDtmfEventReceived &&
          type == other.type &&
          event == other.event &&
          receivedAt == other.receivedAt; } 
@override int get hashCode { return Object.hash(type, event, receivedAt); } 
@override String toString() { return 'RealtimeServerEventInputAudioBufferDtmfEventReceived(type: $type, event: $event, receivedAt: $receivedAt)'; } 
 }
