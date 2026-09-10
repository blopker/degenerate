// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError();

/// Decodes the payload for its declared status and content type.
static ActivityMarkThreadAsReadError parse(ApiResponse response) { switch (response.statusCode) {
case 304:
return const ActivityMarkThreadAsReadError304();
case 403:
final json = jsonDecode(response.body);
return ActivityMarkThreadAsReadError403(BasicError.fromJson(json as Map<String, dynamic>));
default:
return ActivityMarkThreadAsReadErrorUnknown(response);
}
 } 
 }
/// Response for 304.
final class ActivityMarkThreadAsReadError304 extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError304();

 }
/// Response for 403 (application/json).
final class ActivityMarkThreadAsReadError403 extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityMarkThreadAsReadErrorUnknown extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
