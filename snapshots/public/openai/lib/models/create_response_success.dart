// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response.dart';import 'response_stream_event.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateResponseSuccess {const CreateResponseSuccess();

/// Decodes the payload for its declared status and content type.
static CreateResponseSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CreateResponseSuccess200ApplicationJson(Response.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'text/event-stream')) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into ResponseStreamEvent
throw UnsupportedError('Cannot decode text/event-stream response into ResponseStreamEvent');
}
final json = jsonDecode(response.body);
return CreateResponseSuccess200ApplicationJson(Response.fromJson(json as Map<String, dynamic>));

default:
return CreateResponseSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class CreateResponseSuccess200ApplicationJson extends CreateResponseSuccess {const CreateResponseSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final Response data;

}
/// Response for 200 (text/event-stream).
final class CreateResponseSuccess200TextEventStream extends CreateResponseSuccess {const CreateResponseSuccess200TextEventStream(this.data);

/// The decoded response payload.
final ResponseStreamEvent data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateResponseSuccessUnknown extends CreateResponseSuccess {const CreateResponseSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
