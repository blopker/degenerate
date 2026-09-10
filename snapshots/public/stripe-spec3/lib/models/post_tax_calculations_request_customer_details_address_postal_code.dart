// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 {const PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._(this.value);

factory PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._(json),
}; }

static const PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 $empty = PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2._('');

static const List<PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2($value)'; } 
 }

@immutable
final class PostTaxCalculationsRequestCustomerDetailsAddressPostalCode {
  const PostTaxCalculationsRequestCustomerDetailsAddressPostalCode({this.string = const Omittable.absent(),
this.postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTaxCalculationsRequestCustomerDetailsAddressPostalCode._({required this.rawValue, required this.string,
required this.postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2,});
  factory PostTaxCalculationsRequestCustomerDetailsAddressPostalCode.fromJson(Object? json) => PostTaxCalculationsRequestCustomerDetailsAddressPostalCode._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2: parseAnyOfVariant<PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2>(json, (value) => PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2> postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.isPresent) postTaxCalculationsRequestCustomerDetailsAddressPostalCodeVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTaxCalculationsRequestCustomerDetailsAddressPostalCode && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTaxCalculationsRequestCustomerDetailsAddressPostalCode(${toJson()})';
}
