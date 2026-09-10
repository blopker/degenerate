// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_instances_response400.dart';import 'ai_search_update_instances_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError();

/// Decodes the payload for its declared status and content type.
static AiSearchUpdateInstancesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AiSearchUpdateInstancesError400(AiSearchUpdateInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AiSearchUpdateInstancesError404(AiSearchUpdateInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return AiSearchUpdateInstancesErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AiSearchUpdateInstancesError400 extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError400(this.data);

/// The decoded response payload.
final AiSearchUpdateInstancesResponse400 data;

}
/// Response for 404 (application/json).
final class AiSearchUpdateInstancesError404 extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError404(this.data);

/// The decoded response payload.
final AiSearchUpdateInstancesResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchUpdateInstancesErrorUnknown extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
