// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'no_valid_authorization.dart';@immutable final class PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 {const PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 $empty = PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesRequestEvidenceNoValidAuthorization {
  const PostIssuingDisputesRequestEvidenceNoValidAuthorization({this.noValidAuthorization = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceNoValidAuthorization._({required this.rawValue, required this.noValidAuthorization,
required this.postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2,});
  factory PostIssuingDisputesRequestEvidenceNoValidAuthorization.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceNoValidAuthorization._(
    rawValue: Omittable(json),
    noValidAuthorization: parseAnyOfVariant<NoValidAuthorization>(json, (value) => NoValidAuthorization.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<NoValidAuthorization> noValidAuthorization;
final Omittable<PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2> postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => noValidAuthorization.isPresent || postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (noValidAuthorization.isPresent) noValidAuthorization.value?.toJson(),
if (postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.isPresent) postIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceNoValidAuthorization && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceNoValidAuthorization(${toJson()})';
}
