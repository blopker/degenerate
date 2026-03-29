// GENERATED CODE - DO NOT MODIFY BY HAND

/// Details of the transcription error.
final class RealtimeServerEventConversationItemInputAudioTranscriptionFailedError {const RealtimeServerEventConversationItemInputAudioTranscriptionFailedError({this.type, this.code, this.message, this.param, });

factory RealtimeServerEventConversationItemInputAudioTranscriptionFailedError.fromJson(Map<String, dynamic> json) { return RealtimeServerEventConversationItemInputAudioTranscriptionFailedError(
  type: json['type'] as String?,
  code: json['code'] as String?,
  message: json['message'] as String?,
  param: json['param'] as String?,
); }

/// The type of error.
final String? type;

/// Error code, if any.
final String? code;

/// A human-readable error message.
final String? message;

/// Parameter related to the error, if any.
final String? param;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'code': ?code,
  'message': ?message,
  'param': ?param,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RealtimeServerEventConversationItemInputAudioTranscriptionFailedError copyWith({String Function()? type, String Function()? code, String Function()? message, String Function()? param, }) { return RealtimeServerEventConversationItemInputAudioTranscriptionFailedError(
  type: type != null ? type() : this.type,
  code: code != null ? code() : this.code,
  message: message != null ? message() : this.message,
  param: param != null ? param() : this.param,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventConversationItemInputAudioTranscriptionFailedError &&
          type == other.type &&
          code == other.code &&
          message == other.message &&
          param == other.param; } 
@override int get hashCode { return Object.hash(type, code, message, param); } 
@override String toString() { return 'RealtimeServerEventConversationItemInputAudioTranscriptionFailedError(type: $type, code: $code, message: $message, param: $param)'; } 
 }
