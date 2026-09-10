// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionItemsRequestTaxRatesVariant2 {const PostSubscriptionItemsRequestTaxRatesVariant2._(this.value);

factory PostSubscriptionItemsRequestTaxRatesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsRequestTaxRatesVariant2._(json),
};}

static const PostSubscriptionItemsRequestTaxRatesVariant2 $empty = PostSubscriptionItemsRequestTaxRatesVariant2._('');

static const List<PostSubscriptionItemsRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostSubscriptionItemsRequestTaxRatesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostSubscriptionItemsRequestTaxRatesVariant2($value)';}
}
/// A list of [Tax Rate](https://docs.stripe.com/api/tax_rates) ids. These Tax Rates will override the [`default_tax_rates`](https://docs.stripe.com/api/subscriptions/create#create_subscription-default_tax_rates) on the Subscription. When updating, pass an empty string to remove previously-defined tax rates.
@immutable
final class PostSubscriptionItemsRequestTaxRates {
  const PostSubscriptionItemsRequestTaxRates({this.listString = const Omittable.absent(),
this.postSubscriptionItemsRequestTaxRatesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostSubscriptionItemsRequestTaxRates._({required this.rawValue, required this.listString,
required this.postSubscriptionItemsRequestTaxRatesVariant2,});
  factory PostSubscriptionItemsRequestTaxRates.fromJson(Object? json) => PostSubscriptionItemsRequestTaxRates._(
    rawValue: Omittable(json),
    listString: parseAnyOfVariant<List<String>>(json, (value) => (value! as List<dynamic>).map((e) => e as String).toList()),
postSubscriptionItemsRequestTaxRatesVariant2: parseAnyOfVariant<PostSubscriptionItemsRequestTaxRatesVariant2>(json, (value) => PostSubscriptionItemsRequestTaxRatesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<String>> listString;
final Omittable<PostSubscriptionItemsRequestTaxRatesVariant2> postSubscriptionItemsRequestTaxRatesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listString.isPresent || postSubscriptionItemsRequestTaxRatesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listString.isPresent) listString.value,
if (postSubscriptionItemsRequestTaxRatesVariant2.isPresent) postSubscriptionItemsRequestTaxRatesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostSubscriptionItemsRequestTaxRates && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostSubscriptionItemsRequestTaxRates(${toJson()})';
}
