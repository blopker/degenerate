// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_zone_snippet_response4xx.dart';import 'update_zone_snippet_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UpdateZoneSnippetError {const UpdateZoneSnippetError();

/// Decodes the payload for its declared status and content type.
static UpdateZoneSnippetError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  UpdateZoneSnippetError4xx(UpdateZoneSnippetResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  UpdateZoneSnippetError5xx(UpdateZoneSnippetResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  UpdateZoneSnippetErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class UpdateZoneSnippetError4xx extends UpdateZoneSnippetError {const UpdateZoneSnippetError4xx(this.data);

/// The decoded response payload.
final UpdateZoneSnippetResponse4xx data;

}
/// Response for 5xx (application/json).
final class UpdateZoneSnippetError5xx extends UpdateZoneSnippetError {const UpdateZoneSnippetError5xx(this.data);

/// The decoded response payload.
final UpdateZoneSnippetResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class UpdateZoneSnippetErrorUnknown extends UpdateZoneSnippetError {const UpdateZoneSnippetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
