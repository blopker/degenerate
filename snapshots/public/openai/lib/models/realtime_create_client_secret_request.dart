// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_create_client_secret_request_expires_after.dart';import 'realtime_create_client_secret_request_session.dart';import 'realtime_session_create_request_ga.dart';import 'realtime_transcription_session_create_request_ga.dart';/// Create a session and client secret for the Realtime API. The request can specify
/// either a realtime or a transcription session configuration.
/// [Learn more about the Realtime API](/docs/guides/realtime).
/// 
final class RealtimeCreateClientSecretRequest {const RealtimeCreateClientSecretRequest({this.expiresAfter, this.session, });

factory RealtimeCreateClientSecretRequest.fromJson(Map<String, dynamic> json) { return RealtimeCreateClientSecretRequest(
  expiresAfter: json['expires_after'] != null ? RealtimeCreateClientSecretRequestExpiresAfter.fromJson(json['expires_after'] as Map<String, dynamic>) : null,
  session: json['session'] != null ? OneOf2.parse(json['session'], fromA: (v) => RealtimeSessionCreateRequestGa.fromJson(v as Map<String, dynamic>), fromB: (v) => RealtimeTranscriptionSessionCreateRequestGa.fromJson(v as Map<String, dynamic>),) : null,
); }

/// Configuration for the client secret expiration. Expiration refers to the time after which
/// a client secret will no longer be valid for creating sessions. The session itself may
/// continue after that time once started. A secret can be used to create multiple sessions
/// until it expires.
/// 
final RealtimeCreateClientSecretRequestExpiresAfter? expiresAfter;

/// Session configuration to use for the client secret. Choose either a realtime
/// session or a transcription session.
/// 
final RealtimeCreateClientSecretRequestSession? session;

Map<String, dynamic> toJson() { return {
  if (expiresAfter != null) 'expires_after': expiresAfter?.toJson(),
  if (session != null) 'session': session?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimeCreateClientSecretRequest copyWith({RealtimeCreateClientSecretRequestExpiresAfter Function()? expiresAfter, RealtimeCreateClientSecretRequestSession Function()? session, }) { return RealtimeCreateClientSecretRequest(
  expiresAfter: expiresAfter != null ? expiresAfter() : this.expiresAfter,
  session: session != null ? session() : this.session,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeCreateClientSecretRequest &&
          expiresAfter == other.expiresAfter &&
          session == other.session; } 
@override int get hashCode { return Object.hash(expiresAfter, session); } 
@override String toString() { return 'RealtimeCreateClientSecretRequest(expiresAfter: $expiresAfter, session: $session)'; } 
 }
