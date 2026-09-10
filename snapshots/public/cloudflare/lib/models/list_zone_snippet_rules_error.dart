// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_zone_snippet_rules_response4xx.dart';import 'list_zone_snippet_rules_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ListZoneSnippetRulesError {const ListZoneSnippetRulesError();

/// Decodes the payload for its declared status and content type.
static ListZoneSnippetRulesError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneSnippetRulesError4xx(ListZoneSnippetRulesResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return ListZoneSnippetRulesError5xx(ListZoneSnippetRulesResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return ListZoneSnippetRulesErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class ListZoneSnippetRulesError4xx extends ListZoneSnippetRulesError {const ListZoneSnippetRulesError4xx(this.data);

/// The decoded response payload.
final ListZoneSnippetRulesResponse4xx data;

}
/// Response for 5xx (application/json).
final class ListZoneSnippetRulesError5xx extends ListZoneSnippetRulesError {const ListZoneSnippetRulesError5xx(this.data);

/// The decoded response payload.
final ListZoneSnippetRulesResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ListZoneSnippetRulesErrorUnknown extends ListZoneSnippetRulesError {const ListZoneSnippetRulesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
