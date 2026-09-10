// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'd1_export_database_response202_result.dart';import 'd1_export_database_response_result.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class D1ExportDatabaseSuccess {const D1ExportDatabaseSuccess();

/// Decodes the payload for its declared status and content type.
static D1ExportDatabaseSuccess parse(ApiResponse response) { switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return D1ExportDatabaseSuccess200(D1ExportDatabaseResponseResult.fromJson(json['result'] as Map<String, dynamic>));
case 202:
final json = jsonDecode(response.body) as Map<String, dynamic>;
return D1ExportDatabaseSuccess202(D1ExportDatabaseResponse202Result.fromJson(json['result'] as Map<String, dynamic>));
default:
return D1ExportDatabaseSuccessUnknown(response);
}
 } 
 }
/// Response for 200 (application/json).
final class D1ExportDatabaseSuccess200 extends D1ExportDatabaseSuccess {const D1ExportDatabaseSuccess200(this.data);

/// The decoded response payload.
final D1ExportDatabaseResponseResult data;

 }
/// Response for 202 (application/json).
final class D1ExportDatabaseSuccess202 extends D1ExportDatabaseSuccess {const D1ExportDatabaseSuccess202(this.data);

/// The decoded response payload.
final D1ExportDatabaseResponse202Result data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class D1ExportDatabaseSuccessUnknown extends D1ExportDatabaseSuccess {const D1ExportDatabaseSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
