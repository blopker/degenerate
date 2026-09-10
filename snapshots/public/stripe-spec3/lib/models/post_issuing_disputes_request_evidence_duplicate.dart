// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'duplicate.dart';@immutable final class PostIssuingDisputesRequestEvidenceDuplicateVariant2 {const PostIssuingDisputesRequestEvidenceDuplicateVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceDuplicateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceDuplicateVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceDuplicateVariant2 $empty = PostIssuingDisputesRequestEvidenceDuplicateVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceDuplicateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceDuplicateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceDuplicateVariant2($value)'; } 
 }

@immutable
final class PostIssuingDisputesRequestEvidenceDuplicate {
  const PostIssuingDisputesRequestEvidenceDuplicate({this.duplicate = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceDuplicateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceDuplicate._({required this.rawValue, required this.duplicate,
required this.postIssuingDisputesRequestEvidenceDuplicateVariant2,});
  factory PostIssuingDisputesRequestEvidenceDuplicate.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceDuplicate._(
    rawValue: Omittable(json),
    duplicate: parseAnyOfVariant<Duplicate>(json, (value) => Duplicate.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceDuplicateVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceDuplicateVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceDuplicateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Duplicate> duplicate;
final Omittable<PostIssuingDisputesRequestEvidenceDuplicateVariant2> postIssuingDisputesRequestEvidenceDuplicateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => duplicate.isPresent || postIssuingDisputesRequestEvidenceDuplicateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (duplicate.isPresent) duplicate.value?.toJson(),
if (postIssuingDisputesRequestEvidenceDuplicateVariant2.isPresent) postIssuingDisputesRequestEvidenceDuplicateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceDuplicate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceDuplicate(${toJson()})';
}
