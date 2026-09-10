// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A short machine-readable string giving the reason for the verification failure.
@immutable final class GelatoIdNumberReportErrorCode {const GelatoIdNumberReportErrorCode._(this.value);

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
@immutable final class GelatoIdNumberReportError {const GelatoIdNumberReportError({this.code = const Omittable.absent(), this.reason = const Omittable.absent(), });

factory GelatoIdNumberReportError.fromJson(Map<String, dynamic> json) { return GelatoIdNumberReportError(
  code: json.containsKey('code') ? Omittable(json['code'] != null ? GelatoIdNumberReportErrorCode.fromJson(json['code'] as String) : null) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
); }

/// A short machine-readable string giving the reason for the verification failure.
final Omittable<GelatoIdNumberReportErrorCode?> code;

/// A human-readable message giving the reason for the failure. These messages can be shown to your users.
final Omittable<String?> reason;

Map<String, dynamic> toJson() { return {
  if (code.isPresent) 'code': code.value?.toJson(),
  if (reason.isPresent) 'reason': reason.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'reason'}.contains(key)); } 
GelatoIdNumberReportError copyWith({Omittable<GelatoIdNumberReportErrorCode?>? code, Omittable<String?>? reason, }) { return GelatoIdNumberReportError(
  code: code ?? this.code,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoIdNumberReportError &&
          code == other.code &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(code, reason); } 
@override String toString() { return 'GelatoIdNumberReportError(code: $code, reason: $reason)'; } 
 }
