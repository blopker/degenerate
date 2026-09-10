// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 {const PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._(json),
}; }

static const PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2($value)'; } 
 }

@immutable
final class PostTaxCalculationsRequestShipFromDetailsAddressCity {
  const PostTaxCalculationsRequestShipFromDetailsAddressCity({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestShipFromDetailsAddressCityVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestShipFromDetailsAddressCity._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestShipFromDetailsAddressCityVariant2,});
  factory PostTaxCalculationsRequestShipFromDetailsAddressCity.fromJson(Object? json) => PostTaxCalculationsRequestShipFromDetailsAddressCity._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestShipFromDetailsAddressCityVariant2: parseAnyOfVariant<PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2>(json, (value) => PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestShipFromDetailsAddressCityVariant2> postTaxCalculationsRequestShipFromDetailsAddressCityVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestShipFromDetailsAddressCityVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestShipFromDetailsAddressCityVariant2.isPresent) postTaxCalculationsRequestShipFromDetailsAddressCityVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestShipFromDetailsAddressCity && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestShipFromDetailsAddressCity(${toJson()})';
}
