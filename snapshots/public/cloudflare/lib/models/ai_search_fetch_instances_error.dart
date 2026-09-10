// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response400.dart';import 'ai_search_fetch_instances_response404.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class AiSearchFetchInstancesError {const AiSearchFetchInstancesError();

/// Decodes the payload for its declared status and content type.
static AiSearchFetchInstancesError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return AiSearchFetchInstancesError400(AiSearchFetchInstancesResponse400.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return AiSearchFetchInstancesError404(AiSearchFetchInstancesResponse404.fromJson(json as Map<String, dynamic>));
default:
return AiSearchFetchInstancesErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class AiSearchFetchInstancesError400 extends AiSearchFetchInstancesError {const AiSearchFetchInstancesError400(this.data);

/// The decoded response payload.
final AiSearchFetchInstancesResponse400 data;

}
/// Response for 404 (application/json).
final class AiSearchFetchInstancesError404 extends AiSearchFetchInstancesError {const AiSearchFetchInstancesError404(this.data);

/// The decoded response payload.
final AiSearchFetchInstancesResponse404 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class AiSearchFetchInstancesErrorUnknown extends AiSearchFetchInstancesError {const AiSearchFetchInstancesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
