// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_abuse_report_response400.dart';import 'get_abuse_report_response500.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class GetAbuseReportError {const GetAbuseReportError();

/// Decodes the payload for its declared status and content type.
static GetAbuseReportError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return GetAbuseReportError400(GetAbuseReportResponse400.fromJson(json as Map<String, dynamic>));
case 500:
final json = jsonDecode(response.body);
return GetAbuseReportError500(GetAbuseReportResponse500.fromJson(json as Map<String, dynamic>));
default:
return GetAbuseReportErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class GetAbuseReportError400 extends GetAbuseReportError {const GetAbuseReportError400(this.data);

/// The decoded response payload.
final GetAbuseReportResponse400 data;

}
/// Response for 500 (application/json).
final class GetAbuseReportError500 extends GetAbuseReportError {const GetAbuseReportError500(this.data);

/// The decoded response payload.
final GetAbuseReportResponse500 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class GetAbuseReportErrorUnknown extends GetAbuseReportError {const GetAbuseReportErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
