// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A short machine-readable string giving the reason for the verification failure.
@immutable final class GelatoEmailReportErrorCode {const GelatoEmailReportErrorCode._(this.value);

factory GelatoEmailReportErrorCode.fromJson(String json) { return switch (json) {
  'email_unverified_other' => emailUnverifiedOther,
  'email_verification_declined' => emailVerificationDeclined,
  _ => GelatoEmailReportErrorCode._(json),
}; }

static const GelatoEmailReportErrorCode emailUnverifiedOther = GelatoEmailReportErrorCode._('email_unverified_other');

static const GelatoEmailReportErrorCode emailVerificationDeclined = GelatoEmailReportErrorCode._('email_verification_declined');

static const List<GelatoEmailReportErrorCode> values = [emailUnverifiedOther, emailVerificationDeclined];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GelatoEmailReportErrorCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GelatoEmailReportErrorCode($value)'; } 
 }
/// 
@immutable final class GelatoEmailReportError {const GelatoEmailReportError({this.code = const Omittable.absent(), this.reason = const Omittable.absent(), });

factory GelatoEmailReportError.fromJson(Map<String, dynamic> json) { return GelatoEmailReportError(
  code: json.containsKey('code') ? Omittable(json['code'] != null ? GelatoEmailReportErrorCode.fromJson(json['code'] as String) : null) : const Omittable.absent(),
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
); }

/// A short machine-readable string giving the reason for the verification failure.
final Omittable<GelatoEmailReportErrorCode?> code;

/// A human-readable message giving the reason for the failure. These messages can be shown to your users.
final Omittable<String?> reason;

Map<String, dynamic> toJson() { return {
  if (code.isPresent) 'code': code.value?.toJson(),
  if (reason.isPresent) 'reason': reason.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'reason'}.contains(key)); } 
GelatoEmailReportError copyWith({Omittable<GelatoEmailReportErrorCode?>? code, Omittable<String?>? reason, }) { return GelatoEmailReportError(
  code: code ?? this.code,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoEmailReportError &&
          code == other.code &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(code, reason); } 
@override String toString() { return 'GelatoEmailReportError(code: $code, reason: $reason)'; } 
 }
