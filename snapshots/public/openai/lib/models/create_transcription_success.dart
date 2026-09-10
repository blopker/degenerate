// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_transcription_response.dart';import 'create_transcription_response_diarized_json.dart';import 'create_transcription_response_json.dart';import 'create_transcription_response_stream_event.dart';import 'create_transcription_response_verbose_json.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateTranscriptionSuccess {const CreateTranscriptionSuccess();

/// Decodes the payload for its declared status and content type.
static CreateTranscriptionSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CreateTranscriptionSuccess200ApplicationJson(OneOf3.parse(json, fromA: (v) => CreateTranscriptionResponseJson.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateTranscriptionResponseDiarizedJson.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateTranscriptionResponseVerboseJson.fromJson(v as Map<String, dynamic>),)); } else if (responseMediaTypeMatches(contentType, 'text/event-stream', )) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into CreateTranscriptionResponseStreamEvent

throw  UnsupportedError('Cannot decode text/event-stream response into CreateTranscriptionResponseStreamEvent'); } else {
final json = jsonDecode(response.body);
return  CreateTranscriptionSuccess200ApplicationJson(OneOf3.parse(json, fromA: (v) => CreateTranscriptionResponseJson.fromJson(v as Map<String, dynamic>), fromB: (v) => CreateTranscriptionResponseDiarizedJson.fromJson(v as Map<String, dynamic>), fromC: (v) => CreateTranscriptionResponseVerboseJson.fromJson(v as Map<String, dynamic>),)); }default:
return  CreateTranscriptionSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class CreateTranscriptionSuccess200ApplicationJson extends CreateTranscriptionSuccess {const CreateTranscriptionSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final CreateTranscriptionResponse data;

}
/// Response for 200 (text/event-stream).
final class CreateTranscriptionSuccess200TextEventStream extends CreateTranscriptionSuccess {const CreateTranscriptionSuccess200TextEventStream(this.data);

/// The decoded response payload.
final CreateTranscriptionResponseStreamEvent data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateTranscriptionSuccessUnknown extends CreateTranscriptionSuccess {const CreateTranscriptionSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
