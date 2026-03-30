// GENERATED CODE - DO NOT MODIFY BY HAND

import 'realtime_session_create_response_ga.dart';import 'realtime_transcription_session_create_response_ga.dart';/// The session configuration for either a realtime or transcription session.
/// 
sealed class RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSession();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeCreateClientSecretResponseSession.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'RealtimeSessionCreateResponseGA' => RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa.fromJson(json),
  'RealtimeTranscriptionSessionCreateResponseGA' => RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa.fromJson(json),
  _ => RealtimeCreateClientSecretResponseSession$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeCreateClientSecretResponseSession$Unknown; } 
 }
final class RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa(this.realtimeSessionCreateResponseGa);

factory RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa.fromJson(Map<String, dynamic> json) { return RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa(RealtimeSessionCreateResponseGa.fromJson(json)); }

final RealtimeSessionCreateResponseGa realtimeSessionCreateResponseGa;

@override String get type { return 'RealtimeSessionCreateResponseGA'; } 
@override Map<String, dynamic> toJson() { return {...realtimeSessionCreateResponseGa.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa && realtimeSessionCreateResponseGa == other.realtimeSessionCreateResponseGa; } 
@override int get hashCode { return realtimeSessionCreateResponseGa.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSessionRealtimeSessionCreateResponseGa(realtimeSessionCreateResponseGa: $realtimeSessionCreateResponseGa)'; } 
 }
final class RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa(this.realtimeTranscriptionSessionCreateResponseGa);

factory RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa.fromJson(Map<String, dynamic> json) { return RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa(RealtimeTranscriptionSessionCreateResponseGa.fromJson(json)); }

final RealtimeTranscriptionSessionCreateResponseGa realtimeTranscriptionSessionCreateResponseGa;

@override String get type { return 'RealtimeTranscriptionSessionCreateResponseGA'; } 
@override Map<String, dynamic> toJson() { return {...realtimeTranscriptionSessionCreateResponseGa.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa && realtimeTranscriptionSessionCreateResponseGa == other.realtimeTranscriptionSessionCreateResponseGa; } 
@override int get hashCode { return realtimeTranscriptionSessionCreateResponseGa.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSessionRealtimeTranscriptionSessionCreateResponseGa(realtimeTranscriptionSessionCreateResponseGa: $realtimeTranscriptionSessionCreateResponseGa)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class RealtimeCreateClientSecretResponseSession$Unknown extends RealtimeCreateClientSecretResponseSession {const RealtimeCreateClientSecretResponseSession$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeCreateClientSecretResponseSession$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RealtimeCreateClientSecretResponseSession.unknown($json)'; } 
 }
