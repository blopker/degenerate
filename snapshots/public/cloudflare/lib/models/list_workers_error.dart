// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'list_workers_response401.dart';import 'list_workers_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ListWorkersError {const ListWorkersError();

/// Decodes the payload for its declared status and content type.
static ListWorkersError parse(ApiResponse response) { switch (response.statusCode) {
case 401:
final json = jsonDecode(response.body);
return ListWorkersError401(ListWorkersResponse401.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return ListWorkersError500(ListWorkersResponse500.fromJson(json as Map<String, dynamic>));
default:
return ListWorkersErrorUnknown(response);
}
 } 
 }
/// Response for 401 (application/json).
final class ListWorkersError401 extends ListWorkersError {const ListWorkersError401(this.data);

/// The decoded response payload.
final ListWorkersResponse401 data;

 }
/// Response for 500 (application/json).
final class ListWorkersError500 extends ListWorkersError {const ListWorkersError500(this.data);

/// The decoded response payload.
final ListWorkersResponse500 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ListWorkersErrorUnknown extends ListWorkersError {const ListWorkersErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
