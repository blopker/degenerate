// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'no_valid_authorization2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2 {const PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2._(json),
};}

static const PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2($value)';}
}

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization {
  const PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization({this.noValidAuthorization2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization._({required this.rawValue, required this.noValidAuthorization2,
required this.postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization._(
    rawValue: Omittable(json),
    noValidAuthorization2: parseAnyOfVariant<NoValidAuthorization2>(json, (value) => NoValidAuthorization2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<NoValidAuthorization2> noValidAuthorization2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2> postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => noValidAuthorization2.isPresent || postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (noValidAuthorization2.isPresent) noValidAuthorization2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceNoValidAuthorizationVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceNoValidAuthorization(${toJson()})';
}
