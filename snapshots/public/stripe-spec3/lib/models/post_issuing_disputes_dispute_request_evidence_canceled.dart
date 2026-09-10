// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'canceled2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 {const PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceCanceled {
  const PostIssuingDisputesDisputeRequestEvidenceCanceled({this.canceled2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceCanceledVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceCanceled._({required this.rawValue, required this.canceled2,
required this.postIssuingDisputesDisputeRequestEvidenceCanceledVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceCanceled.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceCanceled._(
    rawValue: Omittable(json),
    canceled2: parseAnyOfVariant<Canceled2>(json, (value) => Canceled2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceCanceledVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Canceled2> canceled2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2> postIssuingDisputesDisputeRequestEvidenceCanceledVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => canceled2.isPresent || postIssuingDisputesDisputeRequestEvidenceCanceledVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (canceled2.isPresent) canceled2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceCanceledVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceCanceledVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceCanceled && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceCanceled(${toJson()})';
}
