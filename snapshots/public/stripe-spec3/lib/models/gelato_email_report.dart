// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gelato_email_report_error.dart';/// Status of this `email` check.
@immutable final class GelatoEmailReportStatus {const GelatoEmailReportStatus._(this.value);

factory GelatoEmailReportStatus.fromJson(String json) { return switch (json) {
  'unverified' => unverified,
  'verified' => verified,
  _ => GelatoEmailReportStatus._(json),
}; }

static const GelatoEmailReportStatus unverified = GelatoEmailReportStatus._('unverified');

static const GelatoEmailReportStatus verified = GelatoEmailReportStatus._('verified');

static const List<GelatoEmailReportStatus> values = [unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoEmailReportStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoEmailReportStatus($value)'; } 
 }
/// Result from a email check
@immutable final class GelatoEmailReport {const GelatoEmailReport({required this.status, this.email = const Omittable.absent(), this.error = const Omittable.absent(), });

factory GelatoEmailReport.fromJson(Map<String, dynamic> json) { return GelatoEmailReport(
  email: json.containsKey('email') ? Omittable(json['email'] as String?) : const Omittable.absent(),
  error: json.containsKey('error') ? Omittable(json['error'] != null ? GelatoEmailReportError.fromJson(json['error'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  status: GelatoEmailReportStatus.fromJson(json['status'] as String),
); }

/// Email to be verified.
final Omittable<String?> email;

/// Details on the verification error. Present when status is `unverified`.
final Omittable<GelatoEmailReportError?> error;

/// Status of this `email` check.
final GelatoEmailReportStatus status;

Map<String, dynamic> toJson() { return {
  if (email.isPresent) 'email': email.value,
  if (error.isPresent) 'error': error.value?.toJson(),
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoEmailReport copyWith({Omittable<String?>? email, Omittable<GelatoEmailReportError?>? error, GelatoEmailReportStatus? status, }) { return GelatoEmailReport(
  email: email ?? this.email,
  error: error ?? this.error,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoEmailReport &&
          email == other.email &&
          error == other.error &&
          status == other.status; } 
@override int get hashCode { return Object.hash(email, error, status); } 
@override String toString() { return 'GelatoEmailReport(email: $email, error: $error, status: $status)'; } 
 }
