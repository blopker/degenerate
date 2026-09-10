// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'duplicate2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 {const PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceDuplicate {
  const PostIssuingDisputesDisputeRequestEvidenceDuplicate({this.duplicate2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceDuplicate._({required this.rawValue, required this.duplicate2,
required this.postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceDuplicate.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceDuplicate._(
    rawValue: Omittable(json),
    duplicate2: parseAnyOfVariant<Duplicate2>(json, (value) => Duplicate2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Duplicate2> duplicate2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2> postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => duplicate2.isPresent || postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (duplicate2.isPresent) duplicate2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceDuplicate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceDuplicate(${toJson()})';
}
