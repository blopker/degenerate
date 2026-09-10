// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'merchandise_not_as_described.dart';@immutable final class PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2 {const PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2._(json),
};}

static const PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2 $empty = PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2($value)';}
}

@immutable
final class PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed {
  const PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed({this.merchandiseNotAsDescribed = const Omittable.absent(),
this.postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed._({required this.rawValue, required this.merchandiseNotAsDescribed,
required this.postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2,});
  factory PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed.fromJson(Object? json) => PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed._(
    rawValue: Omittable(json),
    merchandiseNotAsDescribed: parseAnyOfVariant<MerchandiseNotAsDescribed>(json, (value) => MerchandiseNotAsDescribed.fromJson(value! as Map<String, dynamic>)),
postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2: parseAnyOfVariant<PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2>(json, (value) => PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<MerchandiseNotAsDescribed> merchandiseNotAsDescribed;
final Omittable<PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2> postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => merchandiseNotAsDescribed.isPresent || postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (merchandiseNotAsDescribed.isPresent) merchandiseNotAsDescribed.value?.toJson(),
if (postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2.isPresent) postIssuingDisputesRequestEvidenceMerchandiseNotAsDescribedVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIssuingDisputesRequestEvidenceMerchandiseNotAsDescribed(${toJson()})';
}
