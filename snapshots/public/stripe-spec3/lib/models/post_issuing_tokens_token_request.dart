// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies which status the token should be updated to.
final class PostIssuingTokensTokenRequestStatus {const PostIssuingTokensTokenRequestStatus._(this.value);

factory PostIssuingTokensTokenRequestStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'deleted' => deleted,
  'suspended' => suspended,
  _ => PostIssuingTokensTokenRequestStatus._(json),
}; }

static const PostIssuingTokensTokenRequestStatus active = PostIssuingTokensTokenRequestStatus._('active');

static const PostIssuingTokensTokenRequestStatus deleted = PostIssuingTokensTokenRequestStatus._('deleted');

static const PostIssuingTokensTokenRequestStatus suspended = PostIssuingTokensTokenRequestStatus._('suspended');

static const List<PostIssuingTokensTokenRequestStatus> values = [active, deleted, suspended];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingTokensTokenRequestStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingTokensTokenRequestStatus($value)'; } 
 }
final class PostIssuingTokensTokenRequest {const PostIssuingTokensTokenRequest({this.expand, required this.status, });

factory PostIssuingTokensTokenRequest.fromJson(Map<String, dynamic> json) { return PostIssuingTokensTokenRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  status: PostIssuingTokensTokenRequestStatus.fromJson(json['status'] as String),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Specifies which status the token should be updated to.
final PostIssuingTokensTokenRequestStatus status;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'status': status.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status'); } 
PostIssuingTokensTokenRequest copyWith({List<String> Function()? expand, PostIssuingTokensTokenRequestStatus? status, }) { return PostIssuingTokensTokenRequest(
  expand: expand != null ? expand() : this.expand,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingTokensTokenRequest &&
          listEquals(expand, other.expand) &&
          status == other.status; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), status); } 
@override String toString() { return 'PostIssuingTokensTokenRequest(expand: $expand, status: $status)'; } 
 }
