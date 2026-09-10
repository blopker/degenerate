// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'image_edit_stream_event.dart';import 'images_response.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class CreateImageEditSuccess {const CreateImageEditSuccess();

/// Decodes the payload for its declared status and content type.
static CreateImageEditSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json', )) {
final json = jsonDecode(response.body);
return  CreateImageEditSuccess200ApplicationJson(ImagesResponse.fromJson(json as Map<String, dynamic>)); } else if (responseMediaTypeMatches(contentType, 'text/event-stream', )) {
// TODO: Unsupported non-JSON response schema Cannot decode text/event-stream response into ImageEditStreamEvent

throw  UnsupportedError('Cannot decode text/event-stream response into ImageEditStreamEvent'); } else {
final json = jsonDecode(response.body);
return  CreateImageEditSuccess200ApplicationJson(ImagesResponse.fromJson(json as Map<String, dynamic>)); }default:
return  CreateImageEditSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class CreateImageEditSuccess200ApplicationJson extends CreateImageEditSuccess {const CreateImageEditSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final ImagesResponse data;

}
/// Response for 200 (text/event-stream).
final class CreateImageEditSuccess200TextEventStream extends CreateImageEditSuccess {const CreateImageEditSuccess200TextEventStream(this.data);

/// The decoded response payload.
final ImageEditStreamEvent data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CreateImageEditSuccessUnknown extends CreateImageEditSuccess {const CreateImageEditSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
