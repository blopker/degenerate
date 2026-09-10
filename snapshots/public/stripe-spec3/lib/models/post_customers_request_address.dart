// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_customer_address.dart';@immutable final class PostCustomersRequestAddressVariant2 {const PostCustomersRequestAddressVariant2._(this.value);

factory PostCustomersRequestAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestAddressVariant2._(json),
}; }

static const PostCustomersRequestAddressVariant2 $empty = PostCustomersRequestAddressVariant2._('');

static const List<PostCustomersRequestAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestAddressVariant2($value)'; } 
 }
/// The customer's address. Learn about [country-specific requirements for calculating tax](https://docs.stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
@immutable
final class PostCustomersRequestAddress {
  const PostCustomersRequestAddress({this.optionalFieldsCustomerAddress = const Omittable.absent(),
this.postCustomersRequestAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestAddress._({required this.rawValue, required this.optionalFieldsCustomerAddress,
required this.postCustomersRequestAddressVariant2,});
  factory PostCustomersRequestAddress.fromJson(Object? json) => PostCustomersRequestAddress._(
    rawValue: Omittable(json),
    optionalFieldsCustomerAddress: parseAnyOfVariant<OptionalFieldsCustomerAddress>(json, (value) => OptionalFieldsCustomerAddress.fromJson(value! as Map<String, dynamic>)),
postCustomersRequestAddressVariant2: parseAnyOfVariant<PostCustomersRequestAddressVariant2>(json, (value) => PostCustomersRequestAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<OptionalFieldsCustomerAddress> optionalFieldsCustomerAddress;
final Omittable<PostCustomersRequestAddressVariant2> postCustomersRequestAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => optionalFieldsCustomerAddress.isPresent || postCustomersRequestAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (optionalFieldsCustomerAddress.isPresent) optionalFieldsCustomerAddress.value?.toJson(),
if (postCustomersRequestAddressVariant2.isPresent) postCustomersRequestAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestAddress(${toJson()})';
}
