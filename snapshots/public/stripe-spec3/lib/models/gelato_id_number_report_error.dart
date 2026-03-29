// GENERATED CODE - DO NOT MODIFY BY HAND

/// A short machine-readable string giving the reason for the verification failure.
final class GelatoIdNumberReportErrorCode {const GelatoIdNumberReportErrorCode._(this.value);

factory GelatoIdNumberReportErrorCode.fromJson(String json) { return switch (json) {
  'id_number_insufficient_document_data' => idNumberInsufficientDocumentData,
  'id_number_mismatch' => idNumberMismatch,
  'id_number_unverified_other' => idNumberUnverifiedOther,
  _ => GelatoIdNumberReportErrorCode._(json),
}; }

static const GelatoIdNumberReportErrorCode idNumberInsufficientDocumentData = GelatoIdNumberReportErrorCode._('id_number_insufficient_document_data');

static const GelatoIdNumberReportErrorCode idNumberMismatch = GelatoIdNumberReportErrorCode._('id_number_mismatch');

static const GelatoIdNumberReportErrorCode idNumberUnverifiedOther = GelatoIdNumberReportErrorCode._('id_number_unverified_other');

static const List<GelatoIdNumberReportErrorCode> values = [idNumberInsufficientDocumentData, idNumberMismatch, idNumberUnverifiedOther];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoIdNumberReportErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoIdNumberReportErrorCode($value)'; } 
 }
/// 
final class GelatoIdNumberReportError {const GelatoIdNumberReportError({this.code, this.reason, });

factory GelatoIdNumberReportError.fromJson(Map<String, dynamic> json) { return GelatoIdNumberReportError(
  code: json['code'] != null ? GelatoIdNumberReportErrorCode.fromJson(json['code'] as String) : null,
  reason: json['reason'] as String?,
); }

/// A short machine-readable string giving the reason for the verification failure.
final GelatoIdNumberReportErrorCode? code;

/// A human-readable message giving the reason for the failure. These messages can be shown to your users.
final String? reason;

Map<String, dynamic> toJson() { return {
  if (code != null) 'code': code?.toJson(),
  'reason': ?reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GelatoIdNumberReportError copyWith({GelatoIdNumberReportErrorCode? Function()? code, String? Function()? reason, }) { return GelatoIdNumberReportError(
  code: code != null ? code() : this.code,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoIdNumberReportError &&
          code == other.code &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(code, reason); } 
@override String toString() { return 'GelatoIdNumberReportError(code: $code, reason: $reason)'; } 
 }
