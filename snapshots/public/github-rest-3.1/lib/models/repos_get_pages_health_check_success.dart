// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';import 'pages_health_check.dart';/// Success response variants. Match the concrete type to access its payload.
sealed class ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess();

/// Decodes the payload for its declared status and content type.
static ReposGetPagesHealthCheckSuccess parse(ApiResponse response) {switch (response.statusCode) {
case 200:
final json = jsonDecode(response.body);
return ReposGetPagesHealthCheckSuccess200(PagesHealthCheck.fromJson(json as Map<String, dynamic>));
case 202:
final json = jsonDecode(response.body);
return ReposGetPagesHealthCheckSuccess202(EmptyObject.fromJson(json as Map<String, dynamic>));
default:
return ReposGetPagesHealthCheckSuccessUnknown(response);
}
}
}
/// Response for 200 (application/json).
final class ReposGetPagesHealthCheckSuccess200 extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess200(this.data);

/// The decoded response payload.
final PagesHealthCheck data;

}
/// Response for 202 (application/json).
final class ReposGetPagesHealthCheckSuccess202 extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess202(this.data);

/// The decoded response payload.
final EmptyObject data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class ReposGetPagesHealthCheckSuccessUnknown extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccessUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
