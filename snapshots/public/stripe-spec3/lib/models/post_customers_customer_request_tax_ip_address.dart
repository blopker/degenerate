// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerRequestTaxIpAddressVariant2 {const PostCustomersCustomerRequestTaxIpAddressVariant2._(this.value);

factory PostCustomersCustomerRequestTaxIpAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestTaxIpAddressVariant2._(json),
}; }

static const PostCustomersCustomerRequestTaxIpAddressVariant2 $empty = PostCustomersCustomerRequestTaxIpAddressVariant2._('');

static const List<PostCustomersCustomerRequestTaxIpAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestTaxIpAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestTaxIpAddressVariant2($value)'; } 
 }

@immutable
final class PostCustomersCustomerRequestTaxIpAddress {
  const PostCustomersCustomerRequestTaxIpAddress({this.string = const Omittable.absent(),
this.postCustomersCustomerRequestTaxIpAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestTaxIpAddress._({required this.rawValue, required this.string,
required this.postCustomersCustomerRequestTaxIpAddressVariant2,});
  factory PostCustomersCustomerRequestTaxIpAddress.fromJson(Object? json) => PostCustomersCustomerRequestTaxIpAddress._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersCustomerRequestTaxIpAddressVariant2: parseAnyOfVariant<PostCustomersCustomerRequestTaxIpAddressVariant2>(json, (value) => PostCustomersCustomerRequestTaxIpAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersCustomerRequestTaxIpAddressVariant2> postCustomersCustomerRequestTaxIpAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersCustomerRequestTaxIpAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersCustomerRequestTaxIpAddressVariant2.isPresent) postCustomersCustomerRequestTaxIpAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestTaxIpAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestTaxIpAddress(${toJson()})';
}
