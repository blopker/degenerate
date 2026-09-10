// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A short machine-readable string giving the reason for the verification failure.
@immutable final class GelatoPhoneReportErrorCode {const GelatoPhoneReportErrorCode._(this.value);

factory GelatoPhoneReportErrorCode.fromJson(String json) { return switch (json) {
  'phone_unverified_other' => phoneUnverifiedOther,
  'phone_verification_declined' => phoneVerificationDeclined,
  _ => GelatoPhoneReportErrorCode._(json),
}; }

static const GelatoPhoneReportErrorCode phoneUnverifiedOther = GelatoPhoneReportErrorCode._('phone_unverified_other');

static const GelatoPhoneReportErrorCode phoneVerificationDeclined = GelatoPhoneReportErrorCode._('phone_verification_declined');

static const List<GelatoPhoneReportErrorCode> values = [phoneUnverifiedOther, phoneVerificationDeclined];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoPhoneReportErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoPhoneReportErrorCode($value)'; } 
 }
/// 
@immutable final class GelatoPhoneReportError {const GelatoPhoneReportError({this.code = const Omittable.absent(), this.reason = const Omittable.absent(), });

factory GelatoPhoneReportError.fromJson(Map<String, dynamic> json) { return GelatoPhoneReportError(
  code: json.containsKey('code') ? Omittable(json['code'] != null ? GelatoPhoneReportErrorCode.fromJson(json['code'] as String) : null) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
); }

/// A short machine-readable string giving the reason for the verification failure.
final Omittable<GelatoPhoneReportErrorCode?> code;

/// A human-readable message giving the reason for the failure. These messages can be shown to your users.
final Omittable<String?> reason;

Map<String, dynamic> toJson() { return {
  if (code.isPresent) 'code': code.value?.toJson(),
  if (reason.isPresent) 'reason': reason.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'reason'}.contains(key)); } 
GelatoPhoneReportError copyWith({Omittable<GelatoPhoneReportErrorCode?>? code, Omittable<String?>? reason, }) { return GelatoPhoneReportError(
  code: code ?? this.code,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoPhoneReportError &&
          code == other.code &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(code, reason); } 
@override String toString() { return 'GelatoPhoneReportError(code: $code, reason: $reason)'; } 
 }
