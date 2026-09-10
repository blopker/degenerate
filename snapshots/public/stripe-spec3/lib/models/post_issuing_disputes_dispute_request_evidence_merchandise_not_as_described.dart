// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'merchandise_not_as_described2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2 {const PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2._(json),
};}

static const PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2($value)';}
}

@immutable
final class PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed {
  const PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed({this.merchandiseNotAsDescribed2 = const Omittable.absent(),
this.postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed._({required this.rawValue, required this.merchandiseNotAsDescribed2,
required this.postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2,});
  factory PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed.fromJson(Object? json) => PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed._(
    rawValue: Omittable(json),
    merchandiseNotAsDescribed2: parseAnyOfVariant<MerchandiseNotAsDescribed2>(json, (value) => MerchandiseNotAsDescribed2.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2: parseAnyOfVariant<PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2>(json, (value) => PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<MerchandiseNotAsDescribed2> merchandiseNotAsDescribed2;
final Omittable<PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2> postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => merchandiseNotAsDescribed2.isPresent || postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (merchandiseNotAsDescribed2.isPresent) merchandiseNotAsDescribed2.value?.toJson(),
if (postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.isPresent) postIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesDisputeRequestEvidenceMerchandiseNotAsDescribed(${toJson()})';
}
