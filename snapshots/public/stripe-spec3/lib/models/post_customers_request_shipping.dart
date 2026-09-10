// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_shipping2.dart';@immutable final class PostCustomersRequestShippingVariant2 {const PostCustomersRequestShippingVariant2._(this.value);

factory PostCustomersRequestShippingVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersRequestShippingVariant2._(json),
}; }

static const PostCustomersRequestShippingVariant2 $empty = PostCustomersRequestShippingVariant2._('');

static const List<PostCustomersRequestShippingVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersRequestShippingVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersRequestShippingVariant2($value)'; } 
 }
/// The customer's shipping information. Appears on invoices emailed to this customer.
@immutable
final class PostCustomersRequestShipping {
  const PostCustomersRequestShipping({this.customerShipping2 = const Omittable.absent(),
this.postCustomersRequestShippingVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersRequestShipping._({required this.rawValue, required this.customerShipping2,
required this.postCustomersRequestShippingVariant2,});
  factory PostCustomersRequestShipping.fromJson(Object? json) => PostCustomersRequestShipping._(
    rawValue: Omittable(json),
    customerShipping2: parseAnyOfVariant<CustomerShipping2>(json, (value) => CustomerShipping2.fromJson(value! as Map<String, dynamic>)),
postCustomersRequestShippingVariant2: parseAnyOfVariant<PostCustomersRequestShippingVariant2>(json, (value) => PostCustomersRequestShippingVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CustomerShipping2> customerShipping2;
final Omittable<PostCustomersRequestShippingVariant2> postCustomersRequestShippingVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => customerShipping2.isPresent || postCustomersRequestShippingVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customerShipping2.isPresent) customerShipping2.value?.toJson(),
if (postCustomersRequestShippingVariant2.isPresent) postCustomersRequestShippingVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersRequestShipping && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersRequestShipping(${toJson()})';
}
