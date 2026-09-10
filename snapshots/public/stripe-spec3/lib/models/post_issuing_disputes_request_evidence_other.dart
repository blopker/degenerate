// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'other.dart';@immutable final class PostIssuingDisputesRequestEvidenceOtherVariant2 {const PostIssuingDisputesRequestEvidenceOtherVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceOtherVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceOtherVariant2._(json),
};}

static const PostIssuingDisputesRequestEvidenceOtherVariant2 $empty = PostIssuingDisputesRequestEvidenceOtherVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceOtherVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceOtherVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesRequestEvidenceOtherVariant2($value)';}
}

@immutable
final class PostIssuingDisputesRequestEvidenceOther {
  const PostIssuingDisputesRequestEvidenceOther({this.other = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceOtherVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceOther._({required this.rawValue, required this.other,
required this.postIssuingDisputesRequestEvidenceOtherVariant2,});
  factory PostIssuingDisputesRequestEvidenceOther.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceOther._(
    rawValue: Omittable(json),
    other: parseAnyOfVariant<Other>(json, (value) => Other.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceOtherVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceOtherVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceOtherVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Other> other;
final Omittable<PostIssuingDisputesRequestEvidenceOtherVariant2> postIssuingDisputesRequestEvidenceOtherVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => other.isPresent || postIssuingDisputesRequestEvidenceOtherVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (other.isPresent) other.value?.toJson(),
if (postIssuingDisputesRequestEvidenceOtherVariant2.isPresent) postIssuingDisputesRequestEvidenceOtherVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceOther && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceOther(${toJson()})';
}
