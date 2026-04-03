// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gelato_selfie_report_error.dart';/// Status of this `selfie` check.
@immutable final class GelatoSelfieReportStatus {const GelatoSelfieReportStatus._(this.value);

factory GelatoSelfieReportStatus.fromJson(String json) { return switch (json) {
  'unverified' => unverified,
  'verified' => verified,
  _ => GelatoSelfieReportStatus._(json),
}; }

static const GelatoSelfieReportStatus unverified = GelatoSelfieReportStatus._('unverified');

static const GelatoSelfieReportStatus verified = GelatoSelfieReportStatus._('verified');

static const List<GelatoSelfieReportStatus> values = [unverified, verified];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoSelfieReportStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoSelfieReportStatus($value)'; } 
 }
/// Result from a selfie check
@immutable final class GelatoSelfieReport {const GelatoSelfieReport({required this.status, this.document, this.error, this.selfie, });

factory GelatoSelfieReport.fromJson(Map<String, dynamic> json) { return GelatoSelfieReport(
  document: json['document'] as String?,
  error: json['error'] != null ? GelatoSelfieReportError.fromJson(json['error'] as Map<String, dynamic>) : null,
  selfie: json['selfie'] as String?,
  status: GelatoSelfieReportStatus.fromJson(json['status'] as String),
); }

/// ID of the [File](https://docs.stripe.com/api/files) holding the image of the identity document used in this check.
final String? document;

/// Details on the verification error. Present when status is `unverified`.
final GelatoSelfieReportError? error;

/// ID of the [File](https://docs.stripe.com/api/files) holding the image of the selfie used in this check.
final String? selfie;

/// Status of this `selfie` check.
final GelatoSelfieReportStatus status;

Map<String, dynamic> toJson() { return {
  'document': ?document,
  if (error != null) 'error': error?.toJson(),
  'selfie': ?selfie,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
GelatoSelfieReport copyWith({String? Function()? document, GelatoSelfieReportError? Function()? error, String? Function()? selfie, GelatoSelfieReportStatus? status, }) { return GelatoSelfieReport(
  document: document != null ? document() : this.document,
  error: error != null ? error() : this.error,
  selfie: selfie != null ? selfie() : this.selfie,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoSelfieReport &&
          document == other.document &&
          error == other.error &&
          selfie == other.selfie &&
          status == other.status; } 
@override int get hashCode { return Object.hash(document, error, selfie, status); } 
@override String toString() { return 'GelatoSelfieReport(document: $document, error: $error, selfie: $selfie, status: $status)'; } 
 }
