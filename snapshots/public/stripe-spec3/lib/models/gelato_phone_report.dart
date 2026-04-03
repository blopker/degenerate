// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gelato_phone_report_error.dart';/// Status of this `phone` check.
@immutable final class GelatoPhoneReportStatus {const GelatoPhoneReportStatus._(this.value);

factory GelatoPhoneReportStatus.fromJson(String json) { return switch (json) {
  'unverified' => unverified,
  'verified' => verified,
  _ => GelatoPhoneReportStatus._(json),
}; }

static const GelatoPhoneReportStatus unverified = GelatoPhoneReportStatus._('unverified');

static const GelatoPhoneReportStatus verified = GelatoPhoneReportStatus._('verified');

static const List<GelatoPhoneReportStatus> values = [unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoPhoneReportStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoPhoneReportStatus($value)'; } 
 }
/// Result from a phone check
@immutable final class GelatoPhoneReport {const GelatoPhoneReport({required this.status, this.error, this.phone, });

factory GelatoPhoneReport.fromJson(Map<String, dynamic> json) { return GelatoPhoneReport(
  error: json['error'] != null ? GelatoPhoneReportError.fromJson(json['error'] as Map<String, dynamic>) : null,
  phone: json['phone'] as String?,
  status: GelatoPhoneReportStatus.fromJson(json['status'] as String),
); }

/// Details on the verification error. Present when status is `unverified`.
final GelatoPhoneReportError? error;

/// Phone to be verified.
final String? phone;

/// Status of this `phone` check.
final GelatoPhoneReportStatus status;

Map<String, dynamic> toJson() { return {
  if (error != null) 'error': error?.toJson(),
  'phone': ?phone,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoPhoneReport copyWith({GelatoPhoneReportError? Function()? error, String? Function()? phone, GelatoPhoneReportStatus? status, }) { return GelatoPhoneReport(
  error: error != null ? error() : this.error,
  phone: phone != null ? phone() : this.phone,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoPhoneReport &&
          error == other.error &&
          phone == other.phone &&
          status == other.status; } 
@override int get hashCode { return Object.hash(error, phone, status); } 
@override String toString() { return 'GelatoPhoneReport(error: $error, phone: $phone, status: $status)'; } 
 }
