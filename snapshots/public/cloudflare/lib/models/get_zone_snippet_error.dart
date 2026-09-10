// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_zone_snippet_response4xx.dart';import 'get_zone_snippet_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetZoneSnippetError {const GetZoneSnippetError();

/// Decodes the payload for its declared status and content type.
static GetZoneSnippetError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  GetZoneSnippetError4xx(GetZoneSnippetResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  GetZoneSnippetError5xx(GetZoneSnippetResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  GetZoneSnippetErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class GetZoneSnippetError4xx extends GetZoneSnippetError {const GetZoneSnippetError4xx(this.data);

/// The decoded response payload.
final GetZoneSnippetResponse4xx data;

}
/// Response for 5xx (application/json).
final class GetZoneSnippetError5xx extends GetZoneSnippetError {const GetZoneSnippetError5xx(this.data);

/// The decoded response payload.
final GetZoneSnippetResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetZoneSnippetErrorUnknown extends GetZoneSnippetError {const GetZoneSnippetErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
