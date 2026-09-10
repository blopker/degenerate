// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_instance_change_job_status_response400.dart';import 'ai_search_instance_change_job_status_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError();

/// Decodes the payload for its declared status and content type.
static AiSearchInstanceChangeJobStatusError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AiSearchInstanceChangeJobStatusError400(AiSearchInstanceChangeJobStatusResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return AiSearchInstanceChangeJobStatusError500(AiSearchInstanceChangeJobStatusResponse500.fromJson(json as Map<String, dynamic>));
default:
return AiSearchInstanceChangeJobStatusErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AiSearchInstanceChangeJobStatusError400 extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError400(this.data);

/// The decoded response payload.
final AiSearchInstanceChangeJobStatusResponse400 data;

}
/// Response for 500 (application/json).
final class AiSearchInstanceChangeJobStatusError500 extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusError500(this.data);

/// The decoded response payload.
final AiSearchInstanceChangeJobStatusResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchInstanceChangeJobStatusErrorUnknown extends AiSearchInstanceChangeJobStatusError {const AiSearchInstanceChangeJobStatusErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
