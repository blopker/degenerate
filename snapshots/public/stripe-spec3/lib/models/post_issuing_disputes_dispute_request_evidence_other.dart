// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'other2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceOtherVariant2 {const PostIssuingDisputesDisputeRequestEvidenceOtherVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceOtherVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceOtherVariant2._(json),
};}

static const PostIssuingDisputesDisputeRequestEvidenceOtherVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceOtherVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceOtherVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceOtherVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesDisputeRequestEvidenceOtherVariant2($value)';}
}

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceOther {
  const PostIssuingDisputesDisputeRequestEvidenceOther({this.other2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceOtherVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceOther._({required this.rawValue, required this.other2,
required this.postIssuingDisputesDisputeRequestEvidenceOtherVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceOther.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceOther._(
    rawValue: Omittable(json),
    other2: parseAnyOfVariant<Other2>(json, (value) => Other2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceOtherVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceOtherVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceOtherVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Other2> other2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceOtherVariant2> postIssuingDisputesDisputeRequestEvidenceOtherVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => other2.isPresent || postIssuingDisputesDisputeRequestEvidenceOtherVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (other2.isPresent) other2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceOtherVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceOtherVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceOther && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceOther(${toJson()})';
}
