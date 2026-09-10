// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'not_received2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 {const PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceNotReceived {
  const PostIssuingDisputesDisputeRequestEvidenceNotReceived({this.notReceived2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceNotReceived._({required this.rawValue, required this.notReceived2,
required this.postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceNotReceived.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceNotReceived._(
    rawValue: Omittable(json),
    notReceived2: parseAnyOfVariant<NotReceived2>(json, (value) => NotReceived2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<NotReceived2> notReceived2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2> postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => notReceived2.isPresent || postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (notReceived2.isPresent) notReceived2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceNotReceived && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceNotReceived(${toJson()})';
}
