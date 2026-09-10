// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'update_zone_snippet_rules_response4xx.dart';import 'update_zone_snippet_rules_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class UpdateZoneSnippetRulesError {const UpdateZoneSnippetRulesError();

/// Decodes the payload for its declared status and content type.
static UpdateZoneSnippetRulesError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return UpdateZoneSnippetRulesError4xx(UpdateZoneSnippetRulesResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return UpdateZoneSnippetRulesError5xx(UpdateZoneSnippetRulesResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return UpdateZoneSnippetRulesErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class UpdateZoneSnippetRulesError4xx extends UpdateZoneSnippetRulesError {const UpdateZoneSnippetRulesError4xx(this.data);

/// The decoded response payload.
final UpdateZoneSnippetRulesResponse4xx data;

 }
/// Response for 5xx (application/json).
final class UpdateZoneSnippetRulesError5xx extends UpdateZoneSnippetRulesError {const UpdateZoneSnippetRulesError5xx(this.data);

/// The decoded response payload.
final UpdateZoneSnippetRulesResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class UpdateZoneSnippetRulesErrorUnknown extends UpdateZoneSnippetRulesError {const UpdateZoneSnippetRulesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
