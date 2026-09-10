// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_chat_completion_response.dart';import 'create_chat_completion_stream_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateChatCompletionSuccess {const CreateChatCompletionSuccess();

/// Decodes the payload for its declared status and content type.
static CreateChatCompletionSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CreateChatCompletionSuccess200ApplicationJson(CreateChatCompletionResponse.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'text/event-stream')) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into CreateChatCompletionStreamResponse
throw UnsupportedError('Cannot decode text/event-stream response into CreateChatCompletionStreamResponse');
}
final json = jsonDecode(response.body);
return CreateChatCompletionSuccess200ApplicationJson(CreateChatCompletionResponse.fromJson(json as Map<String, dynamic>));

default:
return CreateChatCompletionSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class CreateChatCompletionSuccess200ApplicationJson extends CreateChatCompletionSuccess {const CreateChatCompletionSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final CreateChatCompletionResponse data;

}
/// Response for 200 (text/event-stream).
final class CreateChatCompletionSuccess200TextEventStream extends CreateChatCompletionSuccess {const CreateChatCompletionSuccess200TextEventStream(this.data);

/// The decoded response payload.
final CreateChatCompletionStreamResponse data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateChatCompletionSuccessUnknown extends CreateChatCompletionSuccess {const CreateChatCompletionSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
