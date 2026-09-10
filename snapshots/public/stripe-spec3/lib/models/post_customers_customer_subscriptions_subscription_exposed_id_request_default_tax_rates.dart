// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2($value)'; } 
 }
/// The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription. Pass an empty string to remove previously-defined tax rates.
@immutable
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates {
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2> postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates(${toJson()})';
}
