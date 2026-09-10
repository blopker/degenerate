// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2 {const PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2._(json),
}; }

static const PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2($value)'; } 
 }

@immutable
final class PostTaxCalculationsRequestShipFromDetailsAddressLine1 {
  const PostTaxCalculationsRequestShipFromDetailsAddressLine1({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestShipFromDetailsAddressLine1._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2,});
  factory PostTaxCalculationsRequestShipFromDetailsAddressLine1.fromJson(Object? json) => PostTaxCalculationsRequestShipFromDetailsAddressLine1._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2: parseAnyOfVariant<PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2>(json, (value) => PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestShipFromDetailsAddressLine1Variant2> postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2.isPresent) postTaxCalculationsRequestShipFromDetailsAddressLine1Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestShipFromDetailsAddressLine1 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestShipFromDetailsAddressLine1(${toJson()})';
}
