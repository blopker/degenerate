// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_zone_snippet_response4xx.dart';import 'delete_zone_snippet_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteZoneSnippetError {const DeleteZoneSnippetError();

/// Decodes the payload for its declared status and content type.
static DeleteZoneSnippetError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  DeleteZoneSnippetError4xx(DeleteZoneSnippetResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  DeleteZoneSnippetError5xx(DeleteZoneSnippetResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  DeleteZoneSnippetErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class DeleteZoneSnippetError4xx extends DeleteZoneSnippetError {const DeleteZoneSnippetError4xx(this.data);

/// The decoded response payload.
final DeleteZoneSnippetResponse4xx data;

}
/// Response for 5xx (application/json).
final class DeleteZoneSnippetError5xx extends DeleteZoneSnippetError {const DeleteZoneSnippetError5xx(this.data);

/// The decoded response payload.
final DeleteZoneSnippetResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteZoneSnippetErrorUnknown extends DeleteZoneSnippetError {const DeleteZoneSnippetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
