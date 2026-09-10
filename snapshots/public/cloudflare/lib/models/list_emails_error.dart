// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_emails_response400.dart';import 'list_emails_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ListEmailsError {const ListEmailsError();

/// Decodes the payload for its declared status and content type.
static ListEmailsError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return  ListEmailsError400(ListEmailsResponse400.fromJson(json as Map<String, dynamic>));case 500:
final json = jsonDecode(response.body);
return  ListEmailsError500(ListEmailsResponse500.fromJson(json as Map<String, dynamic>));default:
return  ListEmailsErrorUnknown(response); }}
}
/// Response for 400 (application/json).
final class ListEmailsError400 extends ListEmailsError {const ListEmailsError400(this.data);

/// The decoded response payload.
final ListEmailsResponse400 data;

}
/// Response for 500 (application/json).
final class ListEmailsError500 extends ListEmailsError {const ListEmailsError500(this.data);

/// The decoded response payload.
final ListEmailsResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ListEmailsErrorUnknown extends ListEmailsError {const ListEmailsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
