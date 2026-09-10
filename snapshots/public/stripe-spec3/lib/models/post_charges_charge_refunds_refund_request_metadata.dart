// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostChargesChargeRefundsRefundRequestMetadataVariant2 {const PostChargesChargeRefundsRefundRequestMetadataVariant2._(this.value);

factory PostChargesChargeRefundsRefundRequestMetadataVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostChargesChargeRefundsRefundRequestMetadataVariant2._(json),
};}

static const PostChargesChargeRefundsRefundRequestMetadataVariant2 $empty = PostChargesChargeRefundsRefundRequestMetadataVariant2._('');

static const List<PostChargesChargeRefundsRefundRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostChargesChargeRefundsRefundRequestMetadataVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostChargesChargeRefundsRefundRequestMetadataVariant2($value)';}
}

@immutable
final class PostChargesChargeRefundsRefundRequestMetadata {
  const PostChargesChargeRefundsRefundRequestMetadata({this.mapStringString = const Omittable.absent(),
this.postChargesChargeRefundsRefundRequestMetadataVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostChargesChargeRefundsRefundRequestMetadata._({required this.rawValue, required this.mapStringString,
required this.postChargesChargeRefundsRefundRequestMetadataVariant2,});
  factory PostChargesChargeRefundsRefundRequestMetadata.fromJson(Object? json) => PostChargesChargeRefundsRefundRequestMetadata._(
    rawValue: Omittable(json),
    mapStringString: parseAnyOfVariant<Map<String, String>>(json, (value) => (value! as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String))),
postChargesChargeRefundsRefundRequestMetadataVariant2: parseAnyOfVariant<PostChargesChargeRefundsRefundRequestMetadataVariant2>(json, (value) => PostChargesChargeRefundsRefundRequestMetadataVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Map<String, String>> mapStringString;
final Omittable<PostChargesChargeRefundsRefundRequestMetadataVariant2> postChargesChargeRefundsRefundRequestMetadataVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => mapStringString.isPresent || postChargesChargeRefundsRefundRequestMetadataVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (mapStringString.isPresent) mapStringString.value,
if (postChargesChargeRefundsRefundRequestMetadataVariant2.isPresent) postChargesChargeRefundsRefundRequestMetadataVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostChargesChargeRefundsRefundRequestMetadata && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostChargesChargeRefundsRefundRequestMetadata(${toJson()})';
}
