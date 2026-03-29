// GENERATED CODE - DO NOT MODIFY BY HAND

/// A short machine-readable string giving the reason for the verification failure.
final class GelatoPhoneReportErrorCode {const GelatoPhoneReportErrorCode._(this.value);

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
final class GelatoPhoneReportError {const GelatoPhoneReportError({this.code, this.reason, });

factory GelatoPhoneReportError.fromJson(Map<String, dynamic> json) { return GelatoPhoneReportError(
  code: json['code'] != null ? GelatoPhoneReportErrorCode.fromJson(json['code'] as String) : null,
  reason: json['reason'] as String?,
); }

/// A short machine-readable string giving the reason for the verification failure.
final GelatoPhoneReportErrorCode? code;

/// A human-readable message giving the reason for the failure. These messages can be shown to your users.
final String? reason;

Map<String, dynamic> toJson() { return {
  if (code != null) 'code': code?.toJson(),
  'reason': ?reason,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GelatoPhoneReportError copyWith({GelatoPhoneReportErrorCode? Function()? code, String? Function()? reason, }) { return GelatoPhoneReportError(
  code: code != null ? code() : this.code,
  reason: reason != null ? reason() : this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoPhoneReportError &&
          code == other.code &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(code, reason); } 
@override String toString() { return 'GelatoPhoneReportError(code: $code, reason: $reason)'; } 
 }
