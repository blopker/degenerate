// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Report has invalid type
extension type const AbuseReportsBadActError(String value) {
factory AbuseReportsBadActError.fromJson(String json) => AbuseReportsBadActError(json);

String toJson() => value;

}
/// Failed to translate email
extension type const AbuseReportsInternalError(String value) {
factory AbuseReportsInternalError.fromJson(String json) => AbuseReportsInternalError(json);

String toJson() => value;

}
/// Invalid value for notification preference
extension type const AbuseReportsInvalidNotifyError(String value) {
factory AbuseReportsInvalidNotifyError.fromJson(String json) => AbuseReportsInvalidNotifyError(json);

String toJson() => value;

}
/// Provided value has invalid size
extension type const AbuseReportsMaxIPsError(String value) {
factory AbuseReportsMaxIPsError.fromJson(String json) => AbuseReportsMaxIPsError(json);

String toJson() => value;

}
/// Please pick one party to notify about this report
extension type const AbuseReportsMustNotifyError(String value) {
factory AbuseReportsMustNotifyError.fromJson(String json) => AbuseReportsMustNotifyError(json);

String toJson() => value;

}
/// Must acknowledge that you are bound by 512(f), that you have a good faith belief about the material, and that you have the authority to act
extension type const AbuseReportsNoAgreeError(String value) {
factory AbuseReportsNoAgreeError.fromJson(String json) => AbuseReportsNoAgreeError(json);

String toJson() => value;

}
/// Original Work section must be between 1 and 2000 characters
extension type const AbuseReportsNoOriginalWorkError(String value) {
factory AbuseReportsNoOriginalWorkError.fromJson(String json) => AbuseReportsNoOriginalWorkError(json);

String toJson() => value;

}
/// Signature must match your name
extension type const AbuseReportsNoSigError(String value) {
factory AbuseReportsNoSigError.fromJson(String json) => AbuseReportsNoSigError(json);

String toJson() => value;

}
/// Provided value has invalid size
extension type const AbuseReportsPortsProtocolError(String value) {
factory AbuseReportsPortsProtocolError.fromJson(String json) => AbuseReportsPortsProtocolError(json);

String toJson() => value;

}
/// Report has the wrong type
extension type const AbuseReportsUnexpectedActError(String value) {
factory AbuseReportsUnexpectedActError.fromJson(String json) => AbuseReportsUnexpectedActError(json);

String toJson() => value;

}
/// An unexpected error occurred
extension type const AbuseReportsUnknownError(String value) {
factory AbuseReportsUnknownError.fromJson(String json) => AbuseReportsUnknownError(json);

String toJson() => value;

}
/// A URL contains a domain that is not active on Cloudflare
extension type const AbuseReportsUrlNotOrangeError(String value) {
factory AbuseReportsUrlNotOrangeError.fromJson(String json) => AbuseReportsUrlNotOrangeError(json);

String toJson() => value;

}
/// You have entered URLs that contain more than 1 unique hostname. A single report may only include 1 unique hostname (i.e, www.example.com). To report URLs related to another hostname (i.e. other.example.com) you'll need to file a separate report.
extension type const AbuseReportsUrlNotvalidError(String value) {
factory AbuseReportsUrlNotvalidError.fromJson(String json) => AbuseReportsUrlNotvalidError(json);

String toJson() => value;

}
/// A value that is one of: `AbuseReportsBadActError`, `AbuseReportsMaxIPsError`, `AbuseReportsPortsProtocolError`, `AbuseReportsInternalError`, `AbuseReportsInvalidNotifyError`, `AbuseReportsMustNotifyError`, `AbuseReportsNoAgreeError`, `AbuseReportsNoOriginalWorkError`, `AbuseReportsNoSigError`, `AbuseReportsUnexpectedActError`, `AbuseReportsUnknownError`, `AbuseReportsUrlNotOrangeError`, `AbuseReportsUrlNotvalidError`.
sealed class AbuseReportsErrorCode {const AbuseReportsErrorCode();

factory AbuseReportsErrorCode.fromJson(Map<String, dynamic> json) {   return AbuseReportsErrorCode$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsBadActError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsBadActError(this._value);

final AbuseReportsBadActError _value;

@override AbuseReportsBadActError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsBadActError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsBadActError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsMaxIPsError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsMaxIPsError(this._value);

final AbuseReportsMaxIPsError _value;

@override AbuseReportsMaxIPsError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsMaxIPsError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsMaxIPsError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsPortsProtocolError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsPortsProtocolError(this._value);

final AbuseReportsPortsProtocolError _value;

@override AbuseReportsPortsProtocolError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsPortsProtocolError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsPortsProtocolError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsInternalError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsInternalError(this._value);

final AbuseReportsInternalError _value;

@override AbuseReportsInternalError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsInternalError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsInternalError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsInvalidNotifyError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsInvalidNotifyError(this._value);

final AbuseReportsInvalidNotifyError _value;

@override AbuseReportsInvalidNotifyError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsInvalidNotifyError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsInvalidNotifyError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsMustNotifyError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsMustNotifyError(this._value);

final AbuseReportsMustNotifyError _value;

@override AbuseReportsMustNotifyError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsMustNotifyError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsMustNotifyError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsNoAgreeError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsNoAgreeError(this._value);

final AbuseReportsNoAgreeError _value;

@override AbuseReportsNoAgreeError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsNoAgreeError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsNoAgreeError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsNoOriginalWorkError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsNoOriginalWorkError(this._value);

final AbuseReportsNoOriginalWorkError _value;

@override AbuseReportsNoOriginalWorkError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsNoOriginalWorkError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsNoOriginalWorkError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsNoSigError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsNoSigError(this._value);

final AbuseReportsNoSigError _value;

@override AbuseReportsNoSigError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsNoSigError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsNoSigError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsUnexpectedActError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsUnexpectedActError(this._value);

final AbuseReportsUnexpectedActError _value;

@override AbuseReportsUnexpectedActError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsUnexpectedActError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsUnexpectedActError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsUnknownError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsUnknownError(this._value);

final AbuseReportsUnknownError _value;

@override AbuseReportsUnknownError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsUnknownError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsUnknownError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsUrlNotOrangeError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsUrlNotOrangeError(this._value);

final AbuseReportsUrlNotOrangeError _value;

@override AbuseReportsUrlNotOrangeError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsUrlNotOrangeError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsUrlNotOrangeError($_value)'; } 
 }
@immutable final class AbuseReportsErrorCodeAbuseReportsUrlNotvalidError extends AbuseReportsErrorCode {const AbuseReportsErrorCodeAbuseReportsUrlNotvalidError(this._value);

final AbuseReportsUrlNotvalidError _value;

@override AbuseReportsUrlNotvalidError get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCodeAbuseReportsUrlNotvalidError && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.abuseReportsUrlNotvalidError($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class AbuseReportsErrorCode$Unknown extends AbuseReportsErrorCode {const AbuseReportsErrorCode$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AbuseReportsErrorCode$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'AbuseReportsErrorCode.unknown($_value)'; } 
 }
