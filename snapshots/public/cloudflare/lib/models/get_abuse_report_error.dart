// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_abuse_report_response400.dart';import 'get_abuse_report_response500.dart';/// Error responses of `GET /accounts/{account_id}/abuse-reports/{report_param}`.
sealed class GetAbuseReportError {const GetAbuseReportError();

/// Parse the variant matching the response status code.
factory GetAbuseReportError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => GetAbuseReportError400.parse(response),
  500 => GetAbuseReportError500.parse(response),
  _ => GetAbuseReportError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class GetAbuseReportError400 extends GetAbuseReportError {const GetAbuseReportError400(this.data);

factory GetAbuseReportError400.parse(ApiResponse response) { return GetAbuseReportError400(GetAbuseReportResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetAbuseReportResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAbuseReportError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetAbuseReportError400($data)'; } 
 }
/// The `500` response.
@immutable final class GetAbuseReportError500 extends GetAbuseReportError {const GetAbuseReportError500(this.data);

factory GetAbuseReportError500.parse(ApiResponse response) { return GetAbuseReportError500(GetAbuseReportResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetAbuseReportResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAbuseReportError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetAbuseReportError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetAbuseReportError$Unknown extends GetAbuseReportError {const GetAbuseReportError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetAbuseReportError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetAbuseReportError.unknown($statusCode)'; } 
 }
