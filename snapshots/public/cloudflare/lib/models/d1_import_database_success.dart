// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_import_database_response202_result.dart';import 'd1_import_database_response_result.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class D1ImportDatabaseSuccess {const D1ImportDatabaseSuccess();

/// Decodes the payload for its declared status and content type.
static D1ImportDatabaseSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return  D1ImportDatabaseSuccess200(D1ImportDatabaseResponseResult.fromJson(json['result'] as Map<String, dynamic>));case 202:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return  D1ImportDatabaseSuccess202(D1ImportDatabaseResponse202Result.fromJson(json['result'] as Map<String, dynamic>));default:
return  D1ImportDatabaseSuccessUnknown(response); }}
}
/// Response for 200 (application/json).
final class D1ImportDatabaseSuccess200 extends D1ImportDatabaseSuccess {const D1ImportDatabaseSuccess200(this.data);

/// The decoded response payload.
final D1ImportDatabaseResponseResult data;

}
/// Response for 202 (application/json).
final class D1ImportDatabaseSuccess202 extends D1ImportDatabaseSuccess {const D1ImportDatabaseSuccess202(this.data);

/// The decoded response payload.
final D1ImportDatabaseResponse202Result data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class D1ImportDatabaseSuccessUnknown extends D1ImportDatabaseSuccess {const D1ImportDatabaseSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
