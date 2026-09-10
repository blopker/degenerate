// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_customer_address2.dart';@immutable final class PostCustomersCustomerRequestAddressVariant2 {const PostCustomersCustomerRequestAddressVariant2._(this.value);

factory PostCustomersCustomerRequestAddressVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestAddressVariant2._(json),
};}

static const PostCustomersCustomerRequestAddressVariant2 $empty = PostCustomersCustomerRequestAddressVariant2._('');

static const List<PostCustomersCustomerRequestAddressVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerRequestAddressVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerRequestAddressVariant2($value)';}
}
/// The customer's address. Learn about [country-specific requirements for calculating tax](https://docs.stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
@immutable
final class PostCustomersCustomerRequestAddress {
  const PostCustomersCustomerRequestAddress({this.optionalFieldsCustomerAddress2 = const Omittable.absent(),
this.postCustomersCustomerRequestAddressVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestAddress._({required this.rawValue, required this.optionalFieldsCustomerAddress2,
required this.postCustomersCustomerRequestAddressVariant2,});
  factory PostCustomersCustomerRequestAddress.fromJson(Object? json) => PostCustomersCustomerRequestAddress._(
    rawValue: Omittable(json),
    optionalFieldsCustomerAddress2: parseAnyOfVariant<OptionalFieldsCustomerAddress2>(json, (value) => OptionalFieldsCustomerAddress2.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerRequestAddressVariant2: parseAnyOfVariant<PostCustomersCustomerRequestAddressVariant2>(json, (value) => PostCustomersCustomerRequestAddressVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<OptionalFieldsCustomerAddress2> optionalFieldsCustomerAddress2;
final Omittable<PostCustomersCustomerRequestAddressVariant2> postCustomersCustomerRequestAddressVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => optionalFieldsCustomerAddress2.isPresent || postCustomersCustomerRequestAddressVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (optionalFieldsCustomerAddress2.isPresent) optionalFieldsCustomerAddress2.value?.toJson(),
if (postCustomersCustomerRequestAddressVariant2.isPresent) postCustomersCustomerRequestAddressVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestAddress && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestAddress(${toJson()})';
}
