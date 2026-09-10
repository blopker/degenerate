// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_zone_snippet_rules_response4xx.dart';import 'delete_zone_snippet_rules_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class DeleteZoneSnippetRulesError {const DeleteZoneSnippetRulesError();

/// Decodes the payload for its declared status and content type.
static DeleteZoneSnippetRulesError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  DeleteZoneSnippetRulesError4xx(DeleteZoneSnippetRulesResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  DeleteZoneSnippetRulesError5xx(DeleteZoneSnippetRulesResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  DeleteZoneSnippetRulesErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class DeleteZoneSnippetRulesError4xx extends DeleteZoneSnippetRulesError {const DeleteZoneSnippetRulesError4xx(this.data);

/// The decoded response payload.
final DeleteZoneSnippetRulesResponse4xx data;

}
/// Response for 5xx (application/json).
final class DeleteZoneSnippetRulesError5xx extends DeleteZoneSnippetRulesError {const DeleteZoneSnippetRulesError5xx(this.data);

/// The decoded response payload.
final DeleteZoneSnippetRulesResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class DeleteZoneSnippetRulesErrorUnknown extends DeleteZoneSnippetRulesError {const DeleteZoneSnippetRulesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
