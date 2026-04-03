// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult {const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._(this.value);

factory PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult.fromJson(String json) { return switch (json) {
  'attempt_acknowledged' => attemptAcknowledged,
  'authenticated' => authenticated,
  'failed' => failed,
  'required' => $required,
  _ => PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult attemptAcknowledged = PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._('attempt_acknowledged');

static const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult authenticated = PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._('authenticated');

static const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult failed = PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._('failed');

static const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult $required = PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult._('required');

static const List<PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult> values = [attemptAcknowledged, authenticated, failed, $required];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult($value)'; } 
 }
@immutable final class PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure {const PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure({required this.result});

factory PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure(
  result: PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult.fromJson(json['result'] as String),
); }

final PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult result;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result'); } 
PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure copyWith({PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecureResult? result}) { return PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure(
  result: result ?? this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestVerificationDataThreeDSecure(result: $result)'; } 
 }
