// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2($value)'; } 
 }
/// ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://docs.stripe.com/api/customers/object#customer_object-default_source).
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource({this.string = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource._({required this.rawValue, required this.string,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSourceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultSource(${toJson()})';
}
