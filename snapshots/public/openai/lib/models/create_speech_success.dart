// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_speech_response_stream_event.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateSpeechSuccess {const CreateSpeechSuccess();

/// Decodes the payload for its declared status and content type.
static CreateSpeechSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/octet-stream')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return CreateSpeechSuccess200ApplicationOctetStream(value);
}
if (responseMediaTypeMatches(contentType, 'text/event-stream')) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into CreateSpeechResponseStreamEvent
throw UnsupportedError('Cannot decode text/event-stream response into CreateSpeechResponseStreamEvent');
}
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return CreateSpeechSuccess200ApplicationOctetStream(value);

default:
return CreateSpeechSuccessUnknown(response);
}
}
}
/// Response for 200 (application/octet-stream).
final class CreateSpeechSuccess200ApplicationOctetStream extends CreateSpeechSuccess {const CreateSpeechSuccess200ApplicationOctetStream(this.data);

/// The decoded response payload.
final Uint8List data;

}
/// Response for 200 (text/event-stream).
final class CreateSpeechSuccess200TextEventStream extends CreateSpeechSuccess {const CreateSpeechSuccess200TextEventStream(this.data);

/// The decoded response payload.
final CreateSpeechResponseStreamEvent data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateSpeechSuccessUnknown extends CreateSpeechSuccess {const CreateSpeechSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
