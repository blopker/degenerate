// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_gen_stream_event.dart';import 'images_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateImageSuccess {const CreateImageSuccess();

/// Decodes the payload for its declared status and content type.
static CreateImageSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return CreateImageSuccess200ApplicationJson(ImagesResponse.fromJson(json as Map<String, dynamic>));
}
if (responseMediaTypeMatches(contentType, 'text/event-stream')) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into ImageGenStreamEvent
throw UnsupportedError('Cannot decode text/event-stream response into ImageGenStreamEvent');
}
final json = jsonDecode(response.body);
return CreateImageSuccess200ApplicationJson(ImagesResponse.fromJson(json as Map<String, dynamic>));

default:
return CreateImageSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class CreateImageSuccess200ApplicationJson extends CreateImageSuccess {const CreateImageSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final ImagesResponse data;

}
/// Response for 200 (text/event-stream).
final class CreateImageSuccess200TextEventStream extends CreateImageSuccess {const CreateImageSuccess200TextEventStream(this.data);

/// The decoded response payload.
final ImageGenStreamEvent data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateImageSuccessUnknown extends CreateImageSuccess {const CreateImageSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
