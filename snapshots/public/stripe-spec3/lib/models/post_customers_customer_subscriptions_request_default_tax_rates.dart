// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2 {const PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2._(this.value);

factory PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2 $empty = PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2._('');

static const List<PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2($value)'; } 
 }
/// The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
@immutable
final class PostCustomersCustomerSubscriptionsRequestDefaultTaxRates {
  const PostCustomersCustomerSubscriptionsRequestDefaultTaxRates({this.listString = const Omittable.absent(),
this.postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostCustomersCustomerSubscriptionsRequestDefaultTaxRates._({required this.rawValue, required this.listString,
required this.postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2,});
  factory PostCustomersCustomerSubscriptionsRequestDefaultTaxRates.fromJson(Object? json) => PostCustomersCustomerSubscriptionsRequestDefaultTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2: parseAnyOfVariant<PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2>(json, (value) => PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2> postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2.isPresent) postCustomersCustomerSubscriptionsRequestDefaultTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsRequestDefaultTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostCustomersCustomerSubscriptionsRequestDefaultTaxRates(${toJson()})';
}
