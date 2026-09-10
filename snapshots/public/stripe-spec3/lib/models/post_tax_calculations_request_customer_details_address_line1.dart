// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2 {const PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2 $empty = PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2._('');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2($value)'; } 
 }

@immutable
final class PostTaxCalculationsRequestCustomerDetailsAddressLine1 {
  const PostTaxCalculationsRequestCustomerDetailsAddressLine1({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestCustomerDetailsAddressLine1._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2,});
  factory PostTaxCalculationsRequestCustomerDetailsAddressLine1.fromJson(Object? json) => PostTaxCalculationsRequestCustomerDetailsAddressLine1._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2: parseAnyOfVariant<PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2>(json, (value) => PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestCustomerDetailsAddressLine1Variant2> postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2.isPresent) postTaxCalculationsRequestCustomerDetailsAddressLine1Variant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestCustomerDetailsAddressLine1 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestCustomerDetailsAddressLine1(${toJson()})';
}
