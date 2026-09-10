// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_create_job_response400.dart';import 'ai_search_instance_create_job_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError();

/// Decodes the payload for its declared status and content type.
static AiSearchInstanceCreateJobError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AiSearchInstanceCreateJobError400(AiSearchInstanceCreateJobResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return AiSearchInstanceCreateJobError500(AiSearchInstanceCreateJobResponse500.fromJson(json as Map<String, dynamic>));
default:
return AiSearchInstanceCreateJobErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AiSearchInstanceCreateJobError400 extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError400(this.data);

/// The decoded response payload.
final AiSearchInstanceCreateJobResponse400 data;

}
/// Response for 500 (application/json).
final class AiSearchInstanceCreateJobError500 extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobError500(this.data);

/// The decoded response payload.
final AiSearchInstanceCreateJobResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchInstanceCreateJobErrorUnknown extends AiSearchInstanceCreateJobError {const AiSearchInstanceCreateJobErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
