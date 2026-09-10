// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class RetrieveVideoContentSuccess {const RetrieveVideoContentSuccess();

/// Decodes the payload for its declared status and content type.
static RetrieveVideoContentSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final contentType = response.headers.entries.where((e) => e.key.toLowerCase() == 'content-type').firstOrNull?.value;
if (responseMediaTypeMatches(contentType, 'application/json')) {
final json = jsonDecode(response.body);
return RetrieveVideoContentSuccess200ApplicationJson(json as String);
}
if (responseMediaTypeMatches(contentType, 'image/webp')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return RetrieveVideoContentSuccess200ImageWebp(value);
}
if (responseMediaTypeMatches(contentType, 'video/mp4')) {
final value = (() { return Uint8List.fromList(response.bodyBytes); })();
return RetrieveVideoContentSuccess200ImageWebp(value);
}
final json = jsonDecode(response.body);
return RetrieveVideoContentSuccess200ApplicationJson(json as String);

default:
return RetrieveVideoContentSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class RetrieveVideoContentSuccess200ApplicationJson extends RetrieveVideoContentSuccess {const RetrieveVideoContentSuccess200ApplicationJson(this.data);

/// The decoded response payload.
final String data;

}
/// Response for 200 (image/webp).
final class RetrieveVideoContentSuccess200ImageWebp extends RetrieveVideoContentSuccess {const RetrieveVideoContentSuccess200ImageWebp(this.data);

/// The decoded response payload.
final Uint8List data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class RetrieveVideoContentSuccessUnknown extends RetrieveVideoContentSuccess {const RetrieveVideoContentSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
