// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_zone_snippet_content_response4xx.dart';import 'get_zone_snippet_content_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetZoneSnippetContentError {const GetZoneSnippetContentError();

/// Decodes the payload for its declared status and content type.
static GetZoneSnippetContentError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  GetZoneSnippetContentError4xx(GetZoneSnippetContentResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  GetZoneSnippetContentError5xx(GetZoneSnippetContentResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  GetZoneSnippetContentErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class GetZoneSnippetContentError4xx extends GetZoneSnippetContentError {const GetZoneSnippetContentError4xx(this.data);

/// The decoded response payload.
final GetZoneSnippetContentResponse4xx data;

}
/// Response for 5xx (application/json).
final class GetZoneSnippetContentError5xx extends GetZoneSnippetContentError {const GetZoneSnippetContentError5xx(this.data);

/// The decoded response payload.
final GetZoneSnippetContentResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetZoneSnippetContentErrorUnknown extends GetZoneSnippetContentError {const GetZoneSnippetContentErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
