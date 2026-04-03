// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_session_create_response_ga.dart';import 'realtime_transcription_session_create_response_ga.dart';/// The session configuration for either a realtime or transcription session.
/// 
sealed class RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSession();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeCreateClientSecretResponseSession.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'realtime' => RealtimeCreateClientSecretResponseSessionRealtime.fromJson(json),
  'transcription' => RealtimeCreateClientSecretResponseSessionTranscription.fromJson(json),
  _ => RealtimeCreateClientSecretResponseSession$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeCreateClientSecretResponseSession$Unknown; } 
 }
@immutable final class RealtimeCreateClientSecretResponseSessionRealtime extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSessionRealtime(this.realtimeSessionCreateResponseGa);

factory RealtimeCreateClientSecretResponseSessionRealtime.fromJson(Map<String, dynamic> json) { return RealtimeCreateClientSecretResponseSessionRealtime(RealtimeSessionCreateResponseGa.fromJson(json)); }

final RealtimeSessionCreateResponseGa realtimeSessionCreateResponseGa;

@override String get type { return 'realtime'; } 
@override Map<String, dynamic> toJson() { return {...realtimeSessionCreateResponseGa.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSessionRealtime && realtimeSessionCreateResponseGa == other.realtimeSessionCreateResponseGa; } 
@override int get hashCode { return realtimeSessionCreateResponseGa.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSessionRealtime(realtimeSessionCreateResponseGa: $realtimeSessionCreateResponseGa)'; } 
 }
@immutable final class RealtimeCreateClientSecretResponseSessionTranscription extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSessionTranscription(this.realtimeTranscriptionSessionCreateResponseGa);

factory RealtimeCreateClientSecretResponseSessionTranscription.fromJson(Map<String, dynamic> json) { return RealtimeCreateClientSecretResponseSessionTranscription(RealtimeTranscriptionSessionCreateResponseGa.fromJson(json)); }

final RealtimeTranscriptionSessionCreateResponseGa realtimeTranscriptionSessionCreateResponseGa;

@override String get type { return 'transcription'; } 
@override Map<String, dynamic> toJson() { return {...realtimeTranscriptionSessionCreateResponseGa.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSessionTranscription && realtimeTranscriptionSessionCreateResponseGa == other.realtimeTranscriptionSessionCreateResponseGa; } 
@override int get hashCode { return realtimeTranscriptionSessionCreateResponseGa.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSessionTranscription(realtimeTranscriptionSessionCreateResponseGa: $realtimeTranscriptionSessionCreateResponseGa)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RealtimeCreateClientSecretResponseSession$Unknown extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSession$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSession$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSession.unknown($json)'; } 
 }
