// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2 {const PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2._(this.value);

factory PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2._(json),
};}

static const PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2 $empty = PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2._('');

static const List<PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2($value)';}
}

@immutable
final class PostTaxCalculationsRequestShipFromDetailsAddressLine2 {
  const PostTaxCalculationsRequestShipFromDetailsAddressLine2({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestShipFromDetailsAddressLine2._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2,});
  factory PostTaxCalculationsRequestShipFromDetailsAddressLine2.fromJson(Object? json) => PostTaxCalculationsRequestShipFromDetailsAddressLine2._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2: parseAnyOfVariant<PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2>(json, (value) => PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestShipFromDetailsAddressLine2Variant2> postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2.isPresent) postTaxCalculationsRequestShipFromDetailsAddressLine2Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestShipFromDetailsAddressLine2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestShipFromDetailsAddressLine2(${toJson()})';
}
