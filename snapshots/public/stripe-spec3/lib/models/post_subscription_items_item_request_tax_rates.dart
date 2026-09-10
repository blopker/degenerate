// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionItemsItemRequestTaxRatesVariant2 {const PostSubscriptionItemsItemRequestTaxRatesVariant2._(this.value);

factory PostSubscriptionItemsItemRequestTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsItemRequestTaxRatesVariant2._(json),
}; }

static const PostSubscriptionItemsItemRequestTaxRatesVariant2 $empty = PostSubscriptionItemsItemRequestTaxRatesVariant2._('');

static const List<PostSubscriptionItemsItemRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsItemRequestTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsItemRequestTaxRatesVariant2($value)'; } 
 }
/// A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
@immutable
final class PostSubscriptionItemsItemRequestTaxRates {
  const PostSubscriptionItemsItemRequestTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionItemsItemRequestTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsItemRequestTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionItemsItemRequestTaxRatesVariant2,});
  factory PostSubscriptionItemsItemRequestTaxRates.fromJson(Object? json) => PostSubscriptionItemsItemRequestTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionItemsItemRequestTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionItemsItemRequestTaxRatesVariant2>(json, (value) => PostSubscriptionItemsItemRequestTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionItemsItemRequestTaxRatesVariant2> postSubscriptionItemsItemRequestTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionItemsItemRequestTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionItemsItemRequestTaxRatesVariant2.isPresent) postSubscriptionItemsItemRequestTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsItemRequestTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsItemRequestTaxRates(${toJson()})';
}
