// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_shipping3.dart';@immutable final class PostCustomersCustomerRequestShippingVariant2 {const PostCustomersCustomerRequestShippingVariant2._(this.value);

factory PostCustomersCustomerRequestShippingVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestShippingVariant2._(json),
};}

static const PostCustomersCustomerRequestShippingVariant2 $empty = PostCustomersCustomerRequestShippingVariant2._('');

static const List<PostCustomersCustomerRequestShippingVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostCustomersCustomerRequestShippingVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostCustomersCustomerRequestShippingVariant2($value)';}
}
/// The customer's shipping information. Appears on invoices emailed to this customer.
@immutable
final class PostCustomersCustomerRequestShipping {
  const PostCustomersCustomerRequestShipping({this.customerShipping3 = const Omittable.absent(),
this.postCustomersCustomerRequestShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerRequestShipping._({required this.rawValue, required this.customerShipping3,
required this.postCustomersCustomerRequestShippingVariant2,});
  factory PostCustomersCustomerRequestShipping.fromJson(Object? json) => PostCustomersCustomerRequestShipping._(
    rawValue: Omittable(json),
    customerShipping3: parseAnyOfVariant<CustomerShipping3>(json, (value) => CustomerShipping3.fromJson(value! as Map<String, dynamic>)),
postCustomersCustomerRequestShippingVariant2: parseAnyOfVariant<PostCustomersCustomerRequestShippingVariant2>(json, (value) => PostCustomersCustomerRequestShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerShipping3> customerShipping3;
final Omittable<PostCustomersCustomerRequestShippingVariant2> postCustomersCustomerRequestShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customerShipping3.isPresent || postCustomersCustomerRequestShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerShipping3.isPresent) customerShipping3.value?.toJson(),
if (postCustomersCustomerRequestShippingVariant2.isPresent) postCustomersCustomerRequestShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerRequestShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerRequestShipping(${toJson()})';
}
