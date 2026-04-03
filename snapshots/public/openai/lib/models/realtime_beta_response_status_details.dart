// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_beta_response_status_details_error.dart';/// The type of error that caused the response to fail, corresponding
/// with the `status` field (`completed`, `cancelled`, `incomplete`,
/// `failed`).
/// 
@immutable final class RealtimeBetaResponseStatusDetailsType {const RealtimeBetaResponseStatusDetailsType._(this.value);

factory RealtimeBetaResponseStatusDetailsType.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'cancelled' => cancelled,
  'failed' => failed,
  'incomplete' => incomplete,
  _ => RealtimeBetaResponseStatusDetailsType._(json),
}; }

static const RealtimeBetaResponseStatusDetailsType completed = RealtimeBetaResponseStatusDetailsType._('completed');

static const RealtimeBetaResponseStatusDetailsType cancelled = RealtimeBetaResponseStatusDetailsType._('cancelled');

static const RealtimeBetaResponseStatusDetailsType failed = RealtimeBetaResponseStatusDetailsType._('failed');

static const RealtimeBetaResponseStatusDetailsType incomplete = RealtimeBetaResponseStatusDetailsType._('incomplete');

static const List<RealtimeBetaResponseStatusDetailsType> values = [completed, cancelled, failed, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaResponseStatusDetailsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaResponseStatusDetailsType($value)'; } 
 }
/// The reason the Response did not complete. For a `cancelled` Response,
/// one of `turn_detected` (the server VAD detected a new start of speech)
/// or `client_cancelled` (the client sent a cancel event). For an
/// `incomplete` Response, one of `max_output_tokens` or `content_filter`
/// (the server-side safety filter activated and cut off the response).
/// 
@immutable final class RealtimeBetaResponseStatusDetailsReason {const RealtimeBetaResponseStatusDetailsReason._(this.value);

factory RealtimeBetaResponseStatusDetailsReason.fromJson(String json) { return switch (json) {
  'turn_detected' => turnDetected,
  'client_cancelled' => clientCancelled,
  'max_output_tokens' => maxOutputTokens,
  'content_filter' => contentFilter,
  _ => RealtimeBetaResponseStatusDetailsReason._(json),
}; }

static const RealtimeBetaResponseStatusDetailsReason turnDetected = RealtimeBetaResponseStatusDetailsReason._('turn_detected');

static const RealtimeBetaResponseStatusDetailsReason clientCancelled = RealtimeBetaResponseStatusDetailsReason._('client_cancelled');

static const RealtimeBetaResponseStatusDetailsReason maxOutputTokens = RealtimeBetaResponseStatusDetailsReason._('max_output_tokens');

static const RealtimeBetaResponseStatusDetailsReason contentFilter = RealtimeBetaResponseStatusDetailsReason._('content_filter');

static const List<RealtimeBetaResponseStatusDetailsReason> values = [turnDetected, clientCancelled, maxOutputTokens, contentFilter];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaResponseStatusDetailsReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaResponseStatusDetailsReason($value)'; } 
 }
/// Additional details about the status.
@immutable final class RealtimeBetaResponseStatusDetails {const RealtimeBetaResponseStatusDetails({this.type, this.reason, this.error, });

factory RealtimeBetaResponseStatusDetails.fromJson(Map<String, dynamic> json) { return RealtimeBetaResponseStatusDetails(
  type: json['type'] != null ? RealtimeBetaResponseStatusDetailsType.fromJson(json['type'] as String) : null,
  reason: json['reason'] != null ? RealtimeBetaResponseStatusDetailsReason.fromJson(json['reason'] as String) : null,
  error: json['error'] != null ? RealtimeBetaResponseStatusDetailsError.fromJson(json['error'] as Map<String, dynamic>) : null,
); }

/// The type of error that caused the response to fail, corresponding
/// with the `status` field (`completed`, `cancelled`, `incomplete`,
/// `failed`).
/// 
final RealtimeBetaResponseStatusDetailsType? type;

/// The reason the Response did not complete. For a `cancelled` Response,
/// one of `turn_detected` (the server VAD detected a new start of speech)
/// or `client_cancelled` (the client sent a cancel event). For an
/// `incomplete` Response, one of `max_output_tokens` or `content_filter`
/// (the server-side safety filter activated and cut off the response).
/// 
final RealtimeBetaResponseStatusDetailsReason? reason;

/// A description of the error that caused the response to fail,
/// populated when the `status` is `failed`.
/// 
final RealtimeBetaResponseStatusDetailsError? error;

Map<String, dynamic> toJson() { return {
  if (type != null) 'type': type?.toJson(),
  if (reason != null) 'reason': reason?.toJson(),
  if (error != null) 'error': error?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'reason', 'error'}.contains(key)); } 
RealtimeBetaResponseStatusDetails copyWith({RealtimeBetaResponseStatusDetailsType Function()? type, RealtimeBetaResponseStatusDetailsReason Function()? reason, RealtimeBetaResponseStatusDetailsError Function()? error, }) { return RealtimeBetaResponseStatusDetails(
  type: type != null ? type() : this.type,
  reason: reason != null ? reason() : this.reason,
  error: error != null ? error() : this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaResponseStatusDetails &&
          type == other.type &&
          reason == other.reason &&
          error == other.error; } 
@override int get hashCode { return Object.hash(type, reason, error); } 
@override String toString() { return 'RealtimeBetaResponseStatusDetails(type: $type, reason: $reason, error: $error)'; } 
 }
