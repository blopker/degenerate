// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The outcome of the 3D Secure authentication request.
@immutable final class IssuingAuthorizationThreeDSecureResult {const IssuingAuthorizationThreeDSecureResult._(this.value);

factory IssuingAuthorizationThreeDSecureResult.fromJson(String json) { return switch (json) {
  'attempt_acknowledged' => attemptAcknowledged,
  'authenticated' => authenticated,
  'failed' => failed,
  'required' => $required,
  _ => IssuingAuthorizationThreeDSecureResult._(json),
}; }

static const IssuingAuthorizationThreeDSecureResult attemptAcknowledged = IssuingAuthorizationThreeDSecureResult._('attempt_acknowledged');

static const IssuingAuthorizationThreeDSecureResult authenticated = IssuingAuthorizationThreeDSecureResult._('authenticated');

static const IssuingAuthorizationThreeDSecureResult failed = IssuingAuthorizationThreeDSecureResult._('failed');

static const IssuingAuthorizationThreeDSecureResult $required = IssuingAuthorizationThreeDSecureResult._('required');

static const List<IssuingAuthorizationThreeDSecureResult> values = [attemptAcknowledged, authenticated, failed, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationThreeDSecureResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationThreeDSecureResult($value)'; } 
 }
/// 
@immutable final class IssuingAuthorizationThreeDSecure {const IssuingAuthorizationThreeDSecure({required this.result});

factory IssuingAuthorizationThreeDSecure.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationThreeDSecure(
  result: IssuingAuthorizationThreeDSecureResult.fromJson(json['result'] as String),
); }

/// The outcome of the 3D Secure authentication request.
final IssuingAuthorizationThreeDSecureResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
IssuingAuthorizationThreeDSecure copyWith({IssuingAuthorizationThreeDSecureResult? result}) { return IssuingAuthorizationThreeDSecure(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationThreeDSecure &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'IssuingAuthorizationThreeDSecure(result: $result)'; } 
 }
