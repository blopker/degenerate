// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_identity_verification_sessions_session_request_options.dart';import 'post_identity_verification_sessions_session_request_provided_details.dart';/// The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
@immutable final class PostIdentityVerificationSessionsSessionRequestType {const PostIdentityVerificationSessionsSessionRequestType._(this.value);

factory PostIdentityVerificationSessionsSessionRequestType.fromJson(String json) { return switch (json) {
  'document' => document,
  'id_number' => idNumber,
  _ => PostIdentityVerificationSessionsSessionRequestType._(json),
}; }

static const PostIdentityVerificationSessionsSessionRequestType document = PostIdentityVerificationSessionsSessionRequestType._('document');

static const PostIdentityVerificationSessionsSessionRequestType idNumber = PostIdentityVerificationSessionsSessionRequestType._('id_number');

static const List<PostIdentityVerificationSessionsSessionRequestType> values = [document, idNumber];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIdentityVerificationSessionsSessionRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsSessionRequestType($value)'; } 
 }
@immutable final class PostIdentityVerificationSessionsSessionRequest {const PostIdentityVerificationSessionsSessionRequest({this.expand, this.metadata, this.options, this.providedDetails, this.type, });

factory PostIdentityVerificationSessionsSessionRequest.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsSessionRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  options: json['options'] != null ? PostIdentityVerificationSessionsSessionRequestOptions.fromJson(json['options'] as Map<String, dynamic>) : null,
  providedDetails: json['provided_details'] != null ? PostIdentityVerificationSessionsSessionRequestProvidedDetails.fromJson(json['provided_details'] as Map<String, dynamic>) : null,
  type: json['type'] != null ? PostIdentityVerificationSessionsSessionRequestType.fromJson(json['type'] as String) : null,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// A set of options for the session’s verification checks.
final PostIdentityVerificationSessionsSessionRequestOptions? options;

/// Details provided about the user being verified. These details may be shown to the user.
final PostIdentityVerificationSessionsSessionRequestProvidedDetails? providedDetails;

/// The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
final PostIdentityVerificationSessionsSessionRequestType? type;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'metadata': ?metadata,
  if (options != null) 'options': options?.toJson(),
  if (providedDetails != null) 'provided_details': providedDetails?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'metadata', 'options', 'provided_details', 'type'}.contains(key)); } 
PostIdentityVerificationSessionsSessionRequest copyWith({List<String> Function()? expand, Map<String, String> Function()? metadata, PostIdentityVerificationSessionsSessionRequestOptions Function()? options, PostIdentityVerificationSessionsSessionRequestProvidedDetails Function()? providedDetails, PostIdentityVerificationSessionsSessionRequestType Function()? type, }) { return PostIdentityVerificationSessionsSessionRequest(
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  options: options != null ? options() : this.options,
  providedDetails: providedDetails != null ? providedDetails() : this.providedDetails,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsSessionRequest &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          options == other.options &&
          providedDetails == other.providedDetails &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), metadata, options, providedDetails, type); } 
@override String toString() { return 'PostIdentityVerificationSessionsSessionRequest(expand: $expand, metadata: $metadata, options: $options, providedDetails: $providedDetails, type: $type)'; } 
 }
