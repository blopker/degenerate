// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'orgs_update_response422.dart';import 'validation_error.dart';import 'validation_error_simple.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class OrgsUpdateError {const OrgsUpdateError();

/// Decodes the payload for its declared status and content type.
static OrgsUpdateError parse(ApiResponse response) { switch (response.statusCode) {
case 409:
final json = jsonDecode(response.body);
return OrgsUpdateError409(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return OrgsUpdateError422(OneOf2.parse(json, fromA: (v) => ValidationError.fromJson(v as Map<String, dynamic>), fromB: (v) => ValidationErrorSimple.fromJson(v as Map<String, dynamic>),));
default:
return OrgsUpdateErrorUnknown(response);
}
 } 
 }
/// Response for 409 (application/json).
final class OrgsUpdateError409 extends OrgsUpdateError {const OrgsUpdateError409(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class OrgsUpdateError422 extends OrgsUpdateError {const OrgsUpdateError422(this.data);

/// The decoded response payload.
final OrgsUpdateResponse422 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class OrgsUpdateErrorUnknown extends OrgsUpdateError {const OrgsUpdateErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
