// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError();

/// Decodes the payload for its declared status and content type.
static ActivityGetRepoSubscriptionError parse(ApiResponse response) { switch (response.statusCode) {
case 403:
final json = jsonDecode(response.body);
return ActivityGetRepoSubscriptionError403(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
return const ActivityGetRepoSubscriptionError404();
default:
return ActivityGetRepoSubscriptionErrorUnknown(response);
}
 } 
 }
/// Response for 403 (application/json).
final class ActivityGetRepoSubscriptionError403 extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError403(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404.
final class ActivityGetRepoSubscriptionError404 extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError404();

 }
/// An undeclared status. The complete response is retained for manual handling.
final class ActivityGetRepoSubscriptionErrorUnknown extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
