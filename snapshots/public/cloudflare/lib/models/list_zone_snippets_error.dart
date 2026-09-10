// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_zone_snippets_response4xx.dart';import 'list_zone_snippets_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ListZoneSnippetsError {const ListZoneSnippetsError();

/// Decodes the payload for its declared status and content type.
static ListZoneSnippetsError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return ListZoneSnippetsError4xx(ListZoneSnippetsResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return ListZoneSnippetsError5xx(ListZoneSnippetsResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return ListZoneSnippetsErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class ListZoneSnippetsError4xx extends ListZoneSnippetsError {const ListZoneSnippetsError4xx(this.data);

/// The decoded response payload.
final ListZoneSnippetsResponse4xx data;

}
/// Response for 5xx (application/json).
final class ListZoneSnippetsError5xx extends ListZoneSnippetsError {const ListZoneSnippetsError5xx(this.data);

/// The decoded response payload.
final ListZoneSnippetsResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ListZoneSnippetsErrorUnknown extends ListZoneSnippetsError {const ListZoneSnippetsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
